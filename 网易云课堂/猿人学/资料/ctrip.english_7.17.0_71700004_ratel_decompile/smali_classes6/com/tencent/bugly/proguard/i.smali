.class public final Lcom/tencent/bugly/proguard/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/i$a;
    }
.end annotation


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 2
    iput-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 4
    iput-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "GBK"

    .line 7
    iput-object p2, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 9
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private a(DIZ)D
    .locals 1

    .line 87
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 88
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 p3, p2, 0xf

    int-to-byte p3, p3

    and-int/lit16 p2, p2, 0xf0

    const/4 p4, 0x4

    shr-int/2addr p2, p4

    const/16 v0, 0xf

    if-ne p2, v0, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    if-eq p3, p4, :cond_3

    const/4 p1, 0x5

    if-eq p3, p1, :cond_2

    const/16 p1, 0xc

    if-ne p3, p1, :cond_1

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    goto :goto_0

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    :cond_4
    if-nez p4, :cond_5

    :goto_0
    return-wide p1

    .line 94
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(FIZ)F
    .locals 2

    .line 80
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 81
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 p3, p2, 0xf

    int-to-byte p3, p3

    and-int/lit16 p2, p2, 0xf0

    const/4 v0, 0x4

    shr-int/2addr p2, v0

    const/16 v1, 0xf

    if-ne p2, v1, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    if-eq p3, v0, :cond_2

    const/16 p1, 0xc

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 84
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    :goto_0
    return p1

    .line 86
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    .line 5
    iput-byte v1, p0, Lcom/tencent/bugly/proguard/i$a;->a:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 6
    iput v0, p0, Lcom/tencent/bugly/proguard/i$a;->b:I

    .line 7
    iget v0, p0, Lcom/tencent/bugly/proguard/i$a;->b:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    iput p1, p0, Lcom/tencent/bugly/proguard/i$a;->b:I

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 96
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 98
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 100
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 101
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 102
    iget-object p3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result p4

    and-int/lit8 v1, p4, 0xf

    int-to-byte v1, v1

    and-int/lit16 p4, p4, 0xf0

    shr-int/lit8 p4, p4, 0x4

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-ne p4, v2, :cond_1

    .line 104
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    :cond_1
    const/16 p3, 0x8

    if-ne v1, p3, :cond_3

    const/4 p3, 0x0

    .line 105
    invoke-virtual {p0, p3, p3, v3}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p4

    if-ltz p4, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_5

    .line 106
    invoke-virtual {p0, v0, p3, v3}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v2

    .line 107
    invoke-virtual {p0, p2, v3, v3}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 108
    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "size invalid: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_3
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-nez p4, :cond_6

    :cond_5
    return-object p1

    .line 111
    :cond_6
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_7
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit8 v2, v1, 0xf

    int-to-byte v2, v2

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    const/16 v3, 0xf

    if-ne v1, v3, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 17
    :cond_1
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/i;->a(B)V

    const/16 v0, 0xb

    if-ne v2, v0, :cond_0

    return-void
.end method

.method private a(B)V
    .locals 6

    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 18
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string v0, "invalid type."

    invoke-direct {p1, v0}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :pswitch_0
    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0xf

    int-to-byte v5, v5

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    if-ne v4, v0, :cond_0

    .line 21
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    if-nez v5, :cond_1

    .line 22
    invoke-virtual {p0, v1, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    .line 23
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 24
    :cond_1
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "skipField with invalid type, type value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return-void

    .line 25
    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/i;->a()V

    return-void

    .line 26
    :pswitch_3
    invoke-virtual {p0, v1, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_3

    .line 27
    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v4, v3, 0xf

    int-to-byte v4, v4

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    if-ne v3, v0, :cond_2

    .line 29
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 30
    :cond_2
    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/i;->a(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 31
    :pswitch_4
    invoke-virtual {p0, v1, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    :goto_1
    shl-int/lit8 v3, p1, 0x1

    if-ge v1, v3, :cond_5

    .line 32
    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0xf

    int-to-byte v5, v5

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    if-ne v4, v0, :cond_4

    .line 34
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    .line 35
    :cond_4
    invoke-direct {p0, v5}, Lcom/tencent/bugly/proguard/i;->a(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void

    .line 36
    :pswitch_5
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 37
    :pswitch_6
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_6

    add-int/lit16 p1, p1, 0x100

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 39
    :pswitch_7
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 40
    :pswitch_8
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 41
    :pswitch_9
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 42
    :pswitch_a
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 43
    :pswitch_b
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 44
    :pswitch_c
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)Z
    .locals 6

    const/4 v0, 0x0

    .line 9
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0xf

    int-to-byte v3, v3

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/4 v4, 0x1

    const/16 v5, 0xf

    if-ne v2, v5, :cond_0

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    if-le p1, v2, :cond_2

    const/16 v5, 0xb

    if-ne v3, v5, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/i;->a(B)V
    :try_end_0
    .catch Lcom/tencent/bugly/proguard/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_2
    if-ne p1, v2, :cond_3

    return v4

    :catch_0
    :cond_3
    return v0
.end method

.method private a([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 113
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 115
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "unable to get type of key and value."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    and-int/lit8 v0, p3, 0xf

    int-to-byte v0, v0

    and-int/lit16 p3, p3, 0xf0

    shr-int/lit8 p3, p3, 0x4

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    .line 21
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    const/16 p2, 0x9

    if-ne v0, p2, :cond_3

    const/4 p2, 0x0

    .line 22
    invoke-virtual {p0, p2, p2, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p3

    if-ltz p3, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 24
    invoke-virtual {p0, p1, p2, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 25
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 26
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "size invalid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_3
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-nez p3, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(IZ)[Z
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 v0, p2, 0xf

    int-to-byte v0, v0

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    const/16 p1, 0x9

    if-ne v0, p1, :cond_3

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p2

    if-ltz p2, :cond_2

    .line 6
    new-array v0, p2, [Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_5

    .line 7
    invoke-virtual {p0, p1, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-nez p2, :cond_6

    const/4 v0, 0x0

    :cond_5
    return-object v0

    .line 10
    :cond_6
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(IZ)[S
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 v0, p2, 0xf

    int-to-byte v0, v0

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    const/16 p1, 0x9

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p2

    if-ltz p2, :cond_1

    .line 6
    new-array v0, p2, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 7
    aget-short v3, v0, p1

    invoke-virtual {p0, v3, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(SIZ)S

    move-result v3

    aput-short v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p2, :cond_5

    const/4 v0, 0x0

    :cond_4
    return-object v0

    .line 10
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(IZ)[I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 v0, p2, 0xf

    int-to-byte v0, v0

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    const/16 p1, 0x9

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p2

    if-ltz p2, :cond_1

    .line 6
    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 7
    aget v3, v0, p1

    invoke-virtual {p0, v3, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p2, :cond_5

    const/4 v0, 0x0

    :cond_4
    return-object v0

    .line 10
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(IZ)[J
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 v0, p2, 0xf

    int-to-byte v0, v0

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    const/16 p1, 0x9

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p2

    if-ltz p2, :cond_1

    .line 6
    new-array v0, p2, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 7
    aget-wide v3, v0, p1

    invoke-virtual {p0, v3, v4, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p2, :cond_5

    const/4 v0, 0x0

    :cond_4
    return-object v0

    .line 10
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(IZ)[F
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 v0, p2, 0xf

    int-to-byte v0, v0

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    const/16 p1, 0x9

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p2

    if-ltz p2, :cond_1

    .line 6
    new-array v0, p2, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 7
    aget v3, v0, p1

    invoke-direct {p0, v3, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(FIZ)F

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p2, :cond_5

    const/4 v0, 0x0

    :cond_4
    return-object v0

    .line 10
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(IZ)[D
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 v0, p2, 0xf

    int-to-byte v0, v0

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    const/16 p1, 0x9

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p2

    if-ltz p2, :cond_1

    .line 6
    new-array v0, p2, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 7
    aget-wide v3, v0, p1

    invoke-direct {p0, v3, v4, p1, v2}, Lcom/tencent/bugly/proguard/i;->a(DIZ)D

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p2, :cond_5

    const/4 v0, 0x0

    :cond_4
    return-object v0

    .line 10
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(BIZ)B
    .locals 1

    .line 46
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 47
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 p3, p2, 0xf

    int-to-byte p3, p3

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/16 v0, 0xf

    if-ne p2, v0, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    if-eqz p3, :cond_2

    const/16 p1, 0xc

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    :goto_0
    return p1

    .line 52
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(IIZ)I
    .locals 3

    .line 61
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 62
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 p3, p2, 0xf

    int-to-byte p3, p3

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-ne p2, v2, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    if-eqz p3, :cond_4

    if-eq p3, v1, :cond_3

    if-eq p3, v0, :cond_2

    const/16 p1, 0xc

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 65
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_0

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    :goto_0
    return p1

    .line 69
    :cond_6
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)I
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public final a(JIZ)J
    .locals 2

    .line 70
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 71
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 p3, p2, 0xf

    int-to-byte p3, p3

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/4 p4, 0x2

    const/4 v0, 0x1

    const/16 v1, 0xf

    if-ne p2, v1, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    if-eqz p3, :cond_5

    if-eq p3, v0, :cond_4

    if-eq p3, p4, :cond_3

    const/4 p1, 0x3

    if-eq p3, p1, :cond_2

    const/16 p1, 0xc

    if-ne p3, p1, :cond_1

    const-wide/16 p1, 0x0

    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    goto :goto_1

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_0

    .line 77
    :cond_4
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 78
    :cond_5
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    :goto_0
    int-to-long p1, p1

    goto :goto_1

    :cond_6
    if-nez p4, :cond_7

    :goto_1
    return-wide p1

    .line 79
    :cond_7
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;
    .locals 2

    .line 116
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 117
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    and-int/lit8 v0, p3, 0xf

    int-to-byte v0, v0

    and-int/lit16 p3, p3, 0xf0

    shr-int/lit8 p3, p3, 0x4

    const/16 v1, 0xf

    if-ne p3, v1, :cond_0

    .line 120
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    const/16 p2, 0xa

    if-ne v0, p2, :cond_1

    .line 121
    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/i;)V

    .line 122
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/i;->a()V

    goto :goto_0

    .line 123
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 124
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-nez p3, :cond_3

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 125
    :cond_3
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 126
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 130
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(SIZ)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 132
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 135
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    .line 136
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 137
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(FIZ)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 139
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    .line 140
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(DIZ)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 141
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 142
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 143
    :cond_8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 144
    check-cast p1, Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    .line 145
    :cond_9
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_e

    .line 146
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    array-length p3, p1

    if-ge v1, p3, :cond_c

    aget-object p3, p1, v1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_c
    return-object p2

    :cond_d
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 147
    :cond_e
    instance-of v0, p1, Lcom/tencent/bugly/proguard/k;

    if-eqz v0, :cond_f

    .line 148
    check-cast p1, Lcom/tencent/bugly/proguard/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;

    move-result-object p1

    return-object p1

    .line 149
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 150
    instance-of v0, p1, [B

    if-nez v0, :cond_17

    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_10

    goto :goto_2

    .line 151
    :cond_10
    instance-of v0, p1, [Z

    if-eqz v0, :cond_11

    .line 152
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->d(IZ)[Z

    move-result-object p1

    return-object p1

    .line 153
    :cond_11
    instance-of v0, p1, [S

    if-eqz v0, :cond_12

    .line 154
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->e(IZ)[S

    move-result-object p1

    return-object p1

    .line 155
    :cond_12
    instance-of v0, p1, [I

    if-eqz v0, :cond_13

    .line 156
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->f(IZ)[I

    move-result-object p1

    return-object p1

    .line 157
    :cond_13
    instance-of v0, p1, [J

    if-eqz v0, :cond_14

    .line 158
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->g(IZ)[J

    move-result-object p1

    return-object p1

    .line 159
    :cond_14
    instance-of v0, p1, [F

    if-eqz v0, :cond_15

    .line 160
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->h(IZ)[F

    move-result-object p1

    return-object p1

    .line 161
    :cond_15
    instance-of v0, p1, [D

    if-eqz v0, :cond_16

    .line 162
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->i(IZ)[D

    move-result-object p1

    return-object p1

    .line 163
    :cond_16
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 164
    :cond_17
    :goto_2
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->c(IZ)[B

    move-result-object p1

    return-object p1

    .line 165
    :cond_18
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "read object error: unsupport type."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method public final a(SIZ)S
    .locals 2

    .line 53
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 54
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 p3, p2, 0xf

    int-to-byte p3, p3

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/4 v0, 0x1

    const/16 v1, 0xf

    if-ne p2, v1, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_2

    const/16 p1, 0xc

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 57
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 59
    :cond_3
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    int-to-short p1, p1

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    :goto_0
    return p1

    .line 60
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(IZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final b(IZ)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 v0, p2, 0xf

    int-to-byte v0, v0

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 p2, p2, 0x4

    const/16 v1, 0xf

    if-ne p2, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    const/4 p1, 0x6

    if-eq v0, p1, :cond_3

    const/4 p1, 0x7

    if-ne v0, p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    const/high16 p2, 0x6400000

    if-gt p1, p2, :cond_1

    if-ltz p1, :cond_1

    .line 6
    new-array p1, p1, [B

    .line 7
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    :try_start_0
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String too long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_4

    add-int/lit16 p1, p1, 0x100

    .line 13
    :cond_4
    new-array p1, p1, [B

    .line 14
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 15
    :try_start_1
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 16
    :catch_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    const/4 p2, 0x0

    :goto_0
    return-object p2

    .line 17
    :cond_6
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(IZ)[B
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    const/16 p2, 0x9

    const/4 v0, 0x0

    if-eq v1, p2, :cond_5

    const/16 p2, 0xd

    if-ne v1, p2, :cond_4

    .line 5
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0xf

    int-to-byte v5, v5

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    if-ne v4, v2, :cond_1

    .line 7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    :cond_1
    const-string p2, ", "

    const-string v2, ", type: "

    if-nez v5, :cond_3

    .line 8
    invoke-virtual {p0, v0, v0, v3}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_2

    .line 9
    new-array p1, v0, [B

    .line 10
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 11
    :cond_2
    new-instance v3, Lcom/tencent/bugly/proguard/g;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "invalid size, tag: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v3

    .line 12
    :cond_3
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "type mismatch, tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    invoke-virtual {p0, v0, v0, v3}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    if-ltz p1, :cond_7

    .line 15
    new-array p2, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_6

    .line 16
    aget-byte v2, p2, v0

    invoke-virtual {p0, v2, v0, v3}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move-object p1, p2

    goto :goto_1

    .line 17
    :cond_7
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    if-nez p2, :cond_9

    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 18
    :cond_9
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method
