.class public final enum Lcom/meizu/cloud/pushsdk/a/a/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/meizu/cloud/pushsdk/a/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/meizu/cloud/pushsdk/a/a/d;

.field public static final enum b:Lcom/meizu/cloud/pushsdk/a/a/d;

.field public static final enum c:Lcom/meizu/cloud/pushsdk/a/a/d;

.field public static final enum d:Lcom/meizu/cloud/pushsdk/a/a/d;

.field public static final synthetic e:[Lcom/meizu/cloud/pushsdk/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/meizu/cloud/pushsdk/a/a/d;

    const/4 v1, 0x0

    const-string v2, "LOW"

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/a/a/d;->a:Lcom/meizu/cloud/pushsdk/a/a/d;

    .line 2
    new-instance v0, Lcom/meizu/cloud/pushsdk/a/a/d;

    const/4 v2, 0x1

    const-string v3, "MEDIUM"

    invoke-direct {v0, v3, v2}, Lcom/meizu/cloud/pushsdk/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/a/a/d;->b:Lcom/meizu/cloud/pushsdk/a/a/d;

    .line 3
    new-instance v0, Lcom/meizu/cloud/pushsdk/a/a/d;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    invoke-direct {v0, v4, v3}, Lcom/meizu/cloud/pushsdk/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/a/a/d;->c:Lcom/meizu/cloud/pushsdk/a/a/d;

    .line 4
    new-instance v0, Lcom/meizu/cloud/pushsdk/a/a/d;

    const/4 v4, 0x3

    const-string v5, "IMMEDIATE"

    invoke-direct {v0, v5, v4}, Lcom/meizu/cloud/pushsdk/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/a/a/d;->d:Lcom/meizu/cloud/pushsdk/a/a/d;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/meizu/cloud/pushsdk/a/a/d;

    sget-object v5, Lcom/meizu/cloud/pushsdk/a/a/d;->a:Lcom/meizu/cloud/pushsdk/a/a/d;

    aput-object v5, v0, v1

    sget-object v1, Lcom/meizu/cloud/pushsdk/a/a/d;->b:Lcom/meizu/cloud/pushsdk/a/a/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/cloud/pushsdk/a/a/d;->c:Lcom/meizu/cloud/pushsdk/a/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/cloud/pushsdk/a/a/d;->d:Lcom/meizu/cloud/pushsdk/a/a/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/cloud/pushsdk/a/a/d;->e:[Lcom/meizu/cloud/pushsdk/a/a/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/a/a/d;
    .locals 1

    .line 1
    const-class v0, Lcom/meizu/cloud/pushsdk/a/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/meizu/cloud/pushsdk/a/a/d;

    return-object p0
.end method

.method public static values()[Lcom/meizu/cloud/pushsdk/a/a/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/meizu/cloud/pushsdk/a/a/d;->e:[Lcom/meizu/cloud/pushsdk/a/a/d;

    invoke-virtual {v0}, [Lcom/meizu/cloud/pushsdk/a/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/cloud/pushsdk/a/a/d;

    return-object v0
.end method
