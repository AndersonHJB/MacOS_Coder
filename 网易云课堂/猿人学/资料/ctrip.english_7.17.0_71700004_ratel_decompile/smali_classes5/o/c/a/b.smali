.class public final Lo/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lo/c/a/o;


# instance fields
.field public final a:Lo/c/a/n;

.field public final b:Lo/c/a/e;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Lo/c/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/c/a/b;->b:Lo/c/a/e;

    .line 3
    new-instance p1, Lo/c/a/n;

    invoke-direct {p1}, Lo/c/a/n;-><init>()V

    iput-object p1, p0, Lo/c/a/b;->a:Lo/c/a/n;

    return-void
.end method


# virtual methods
.method public a(Lo/c/a/u;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lo/c/a/m;->a(Lo/c/a/u;Ljava/lang/Object;)Lo/c/a/m;

    move-result-object p1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p2, p0, Lo/c/a/b;->a:Lo/c/a/n;

    invoke-virtual {p2, p1}, Lo/c/a/n;->a(Lo/c/a/m;)V

    .line 4
    iget-boolean p1, p0, Lo/c/a/b;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lo/c/a/b;->c:Z

    .line 6
    iget-object p1, p0, Lo/c/a/b;->b:Lo/c/a/e;

    .line 7
    iget-object p1, p1, Lo/c/a/e;->m:Ljava/util/concurrent/ExecutorService;

    .line 8
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 6

    :goto_0
    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lo/c/a/b;->a:Lo/c/a/n;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lo/c/a/n;->a(I)Lo/c/a/m;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lo/c/a/b;->a:Lo/c/a/n;

    invoke-virtual {v1}, Lo/c/a/n;->a()Lo/c/a/m;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iput-boolean v0, p0, Lo/c/a/b;->c:Z

    .line 5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iput-boolean v0, p0, Lo/c/a/b;->c:Z

    return-void

    .line 7
    :cond_0
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 8
    :cond_1
    :goto_1
    iget-object v2, p0, Lo/c/a/b;->b:Lo/c/a/e;

    invoke-virtual {v2, v1}, Lo/c/a/e;->a(Lo/c/a/m;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 9
    :try_start_4
    iget-object v2, p0, Lo/c/a/b;->b:Lo/c/a/e;

    .line 10
    iget-object v2, v2, Lo/c/a/e;->u:Lo/c/a/j;

    .line 11
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was interruppted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lo/c/a/j;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 12
    iput-boolean v0, p0, Lo/c/a/b;->c:Z

    return-void

    :goto_2
    iput-boolean v0, p0, Lo/c/a/b;->c:Z

    throw v1
.end method
