.class public final enum Lorg/simple/eventbus/ThreadMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simple/eventbus/ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/simple/eventbus/ThreadMode;

.field public static final enum ASYNC:Lorg/simple/eventbus/ThreadMode;

.field public static final enum MAIN:Lorg/simple/eventbus/ThreadMode;

.field public static final enum POST:Lorg/simple/eventbus/ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/simple/eventbus/ThreadMode;

    const/4 v1, 0x0

    const-string v2, "MAIN"

    invoke-direct {v0, v2, v1}, Lorg/simple/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simple/eventbus/ThreadMode;->MAIN:Lorg/simple/eventbus/ThreadMode;

    .line 2
    new-instance v0, Lorg/simple/eventbus/ThreadMode;

    const/4 v2, 0x1

    const-string v3, "POST"

    invoke-direct {v0, v3, v2}, Lorg/simple/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simple/eventbus/ThreadMode;->POST:Lorg/simple/eventbus/ThreadMode;

    .line 3
    new-instance v0, Lorg/simple/eventbus/ThreadMode;

    const/4 v3, 0x2

    const-string v4, "ASYNC"

    invoke-direct {v0, v4, v3}, Lorg/simple/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simple/eventbus/ThreadMode;->ASYNC:Lorg/simple/eventbus/ThreadMode;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lorg/simple/eventbus/ThreadMode;

    sget-object v4, Lorg/simple/eventbus/ThreadMode;->MAIN:Lorg/simple/eventbus/ThreadMode;

    aput-object v4, v0, v1

    sget-object v1, Lorg/simple/eventbus/ThreadMode;->POST:Lorg/simple/eventbus/ThreadMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/simple/eventbus/ThreadMode;->ASYNC:Lorg/simple/eventbus/ThreadMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/simple/eventbus/ThreadMode;->$VALUES:[Lorg/simple/eventbus/ThreadMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simple/eventbus/ThreadMode;
    .locals 1

    .line 1
    const-class v0, Lorg/simple/eventbus/ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simple/eventbus/ThreadMode;

    return-object p0
.end method

.method public static values()[Lorg/simple/eventbus/ThreadMode;
    .locals 1

    .line 1
    sget-object v0, Lorg/simple/eventbus/ThreadMode;->$VALUES:[Lorg/simple/eventbus/ThreadMode;

    invoke-virtual {v0}, [Lorg/simple/eventbus/ThreadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simple/eventbus/ThreadMode;

    return-object v0
.end method
