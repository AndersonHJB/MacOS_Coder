.class public Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simple/eventbus/handler/AsyncEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DispatcherThread"
.end annotation


# instance fields
.field public mAsyncHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lorg/simple/eventbus/handler/AsyncEventHandler;


# direct methods
.method public constructor <init>(Lorg/simple/eventbus/handler/AsyncEventHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;->this$0:Lorg/simple/eventbus/handler/AsyncEventHandler;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "mAsyncHandler == null, please call start() first."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;->mAsyncHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
