.class public Lorg/simple/eventbus/handler/AsyncEventHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/simple/eventbus/handler/AsyncEventHandler;->handleEvent(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/simple/eventbus/handler/AsyncEventHandler;

.field public final synthetic val$event:Ljava/lang/Object;

.field public final synthetic val$subscription:Lorg/simple/eventbus/Subscription;


# direct methods
.method public constructor <init>(Lorg/simple/eventbus/handler/AsyncEventHandler;Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$1;->this$0:Lorg/simple/eventbus/handler/AsyncEventHandler;

    iput-object p2, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$1;->val$subscription:Lorg/simple/eventbus/Subscription;

    iput-object p3, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$1;->this$0:Lorg/simple/eventbus/handler/AsyncEventHandler;

    iget-object v0, v0, Lorg/simple/eventbus/handler/AsyncEventHandler;->mEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    iget-object v1, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$1;->val$subscription:Lorg/simple/eventbus/Subscription;

    iget-object v2, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$1;->val$event:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/simple/eventbus/handler/EventHandler;->handleEvent(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V

    return-void
.end method
