.class public final Le/y/a/a/b/b/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public synthetic a:Lcom/tencent/bugly/crashreport/common/strategy/a;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/common/strategy/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/y/a/a/b/b/b;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/tencent/bugly/proguard/p;->a(ILcom/tencent/bugly/proguard/o;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "device"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "gateway"

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Le/y/a/a/b/b/b;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 5
    iget-object v2, v2, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Landroid/content/Context;

    .line 6
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4}, Lcom/tencent/bugly/crashreport/common/info/a;->e(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Le/y/a/a/b/b/b;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 8
    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Landroid/content/Context;

    .line 9
    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/crashreport/common/info/a;->d(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Le/y/a/a/b/b/b;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    iget-object v1, p0, Le/y/a/a/b/b/b;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->d()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 12
    iget-object v0, p0, Le/y/a/a/b/b/b;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 13
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_2

    .line 14
    invoke-static {v3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Le/y/a/a/b/b/b;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 16
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 17
    iput-object v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Le/y/a/a/b/b/b;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 19
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 20
    iput-object v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    :cond_2
    :goto_0
    iget-object v0, p0, Le/y/a/a/b/b/b;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 24
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    return-void
.end method
