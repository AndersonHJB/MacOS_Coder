.class public final Le/r/a/b/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/r/a/b/a/f/c;
.implements Le/r/a/b/a/f/d;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:[B


# instance fields
.field public b:Le/r/a/b/a/f/k;

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Le/r/a/b/a/f/b;->a:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/r/a/b/a/f/n;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x800

    .line 59
    invoke-interface {p1, p0, v2, v3}, Le/r/a/b/a/f/n;->b(Le/r/a/b/a/f/b;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)Le/r/a/b/a/f/b;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    goto :goto_1

    :cond_0
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 48
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 49
    invoke-virtual {p0, p1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    goto :goto_1

    :cond_1
    const/high16 v1, 0x10000

    const-string v2, "Unexpected code point: "

    if-ge p1, v1, :cond_4

    const v1, 0xd800

    if-lt p1, v1, :cond_3

    const v1, 0xdfff

    if-le p1, v1, :cond_2

    goto :goto_0

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Le/c/b/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 51
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 52
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 53
    invoke-virtual {p0, p1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    goto :goto_1

    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 54
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 55
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 56
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 57
    invoke-virtual {p0, p1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    :goto_1
    return-object p0

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Le/c/b/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;II)Le/r/a/b/a/f/b;
    .locals 7

    if-eqz p1, :cond_d

    if-ltz p2, :cond_c

    if-lt p3, p2, :cond_b

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_a

    :goto_0
    if-ge p2, p3, :cond_9

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x800

    const/16 v2, 0x80

    if-ge v0, v2, :cond_2

    const/4 v3, 0x1

    .line 22
    invoke-virtual {p0, v3}, Le/r/a/b/a/f/b;->c(I)Le/r/a/b/a/f/k;

    move-result-object v3

    .line 23
    iget-object v4, v3, Le/r/a/b/a/f/k;->a:[B

    .line 24
    iget v5, v3, Le/r/a/b/a/f/k;->c:I

    sub-int/2addr v5, p2

    sub-int/2addr v1, v5

    .line 25
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v5

    int-to-byte v0, v0

    .line 26
    aput-byte v0, v4, p2

    :goto_1
    move p2, v6

    if-ge p2, v1, :cond_1

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v5

    int-to-byte v0, v0

    .line 28
    aput-byte v0, v4, p2

    goto :goto_1

    :cond_1
    :goto_2
    add-int/2addr v5, p2

    .line 29
    iget v0, v3, Le/r/a/b/a/f/k;->c:I

    sub-int/2addr v5, v0

    add-int/2addr v0, v5

    .line 30
    iput v0, v3, Le/r/a/b/a/f/k;->c:I

    .line 31
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    int-to-long v2, v5

    add-long/2addr v0, v2

    iput-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    goto :goto_0

    :cond_2
    if-ge v0, v1, :cond_3

    shr-int/lit8 v1, v0, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 32
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v2

    .line 33
    invoke-virtual {p0, v0}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    goto :goto_6

    :cond_3
    const v1, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v1, :cond_8

    const v1, 0xdfff

    if-le v0, v1, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_5

    .line 34
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    const v6, 0xdbff

    if-gt v0, v6, :cond_7

    const v6, 0xdc00

    if-lt v5, v6, :cond_7

    if-le v5, v1, :cond_6

    goto :goto_4

    :cond_6
    const/high16 v1, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 35
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    shr-int/lit8 v1, v0, 0xc

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 36
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    shr-int/lit8 v1, v0, 0x6

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 37
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    .line 38
    invoke-virtual {p0, v0}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    .line 39
    :cond_7
    :goto_4
    invoke-virtual {p0, v3}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    move p2, v4

    goto/16 :goto_0

    :cond_8
    :goto_5
    shr-int/lit8 v1, v0, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 40
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    shr-int/lit8 v1, v0, 0x6

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 41
    invoke-virtual {p0, v1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v2

    .line 42
    invoke-virtual {p0, v0}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_9
    return-object p0

    .line 43
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "endIndex > string.length: "

    const-string v1, " > "

    invoke-static {v0, p3, v1}, Le/c/b/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 44
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "endIndex < beginIndex: "

    const-string v1, " < "

    invoke-static {v0, p3, v1, p2}, Le/c/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_c
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p3, "beginIndex < 0: "

    invoke-static {p3, p2}, Le/c/b/a/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic a(J)Le/r/a/b/a/f/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Le/r/a/b/a/f/b;->d(J)Le/r/a/b/a/f/b;

    return-object p0
.end method

.method public synthetic a(Lcom/meizu/cloud/pushsdk/a/h/d;)Le/r/a/b/a/f/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/r/a/b/a/f/b;->b(Lcom/meizu/cloud/pushsdk/a/h/d;)Le/r/a/b/a/f/b;

    return-object p0
.end method

.method public synthetic a(Ljava/lang/String;)Le/r/a/b/a/f/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Le/r/a/b/a/f/b;->b(Ljava/lang/String;)Le/r/a/b/a/f/b;

    return-object p0
.end method

.method public synthetic a([B)Le/r/a/b/a/f/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Le/r/a/b/a/f/b;->b([B)Le/r/a/b/a/f/b;

    return-object p0
.end method

.method public synthetic a([BII)Le/r/a/b/a/f/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Le/r/a/b/a/f/b;->c([BII)Le/r/a/b/a/f/b;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 6
    :try_start_0
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    sget-object v2, Le/r/a/b/a/f/q;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Le/r/a/b/a/f/b;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 8
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Le/r/a/b/a/f/q;->a(JJJ)V

    if-eqz p3, :cond_4

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, ""

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 10
    iget v1, v0, Le/r/a/b/a/f/k;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Le/r/a/b/a/f/k;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 11
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Le/r/a/b/a/f/b;->b(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 12
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Le/r/a/b/a/f/k;->a:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 13
    iget p3, v0, Le/r/a/b/a/f/k;->b:I

    int-to-long v3, p3

    add-long/2addr v3, p1

    long-to-int p3, v3

    iput p3, v0, Le/r/a/b/a/f/k;->b:I

    .line 14
    iget-wide v3, p0, Le/r/a/b/a/f/b;->c:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Le/r/a/b/a/f/b;->c:J

    .line 15
    iget p1, v0, Le/r/a/b/a/f/k;->b:I

    iget p2, v0, Le/r/a/b/a/f/k;->c:I

    if-ne p1, p2, :cond_2

    .line 16
    invoke-virtual {v0}, Le/r/a/b/a/f/k;->a()Le/r/a/b/a/f/k;

    move-result-object p1

    iput-object p1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 17
    invoke-static {v0}, Le/q/d/q/a;->a(Le/r/a/b/a/f/k;)V

    :cond_2
    return-object v2

    .line 18
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount > Integer.MAX_VALUE: "

    invoke-static {v0, p1, p2}, Le/c/b/a/a;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Le/r/a/b/a/f/b;J)V
    .locals 8

    if-eqz p1, :cond_b

    if-eq p1, p0, :cond_a

    .line 61
    iget-wide v0, p1, Le/r/a/b/a/f/b;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Le/r/a/b/a/f/q;->a(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_9

    .line 62
    iget-object v0, p1, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    iget v1, v0, Le/r/a/b/a/f/k;->c:I

    iget v0, v0, Le/r/a/b/a/f/k;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-gez v3, :cond_3

    .line 63
    iget-object v0, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/r/a/b/a/f/k;->g:Le/r/a/b/a/f/k;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 64
    iget-boolean v1, v0, Le/r/a/b/a/f/k;->e:Z

    if-eqz v1, :cond_2

    iget v1, v0, Le/r/a/b/a/f/k;->c:I

    int-to-long v3, v1

    add-long/2addr v3, p2

    iget-boolean v1, v0, Le/r/a/b/a/f/k;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    iget v1, v0, Le/r/a/b/a/f/k;->b:I

    :goto_2
    int-to-long v5, v1

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x800

    cmp-long v1, v3, v5

    if-gtz v1, :cond_2

    .line 65
    iget-object v1, p1, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Le/r/a/b/a/f/k;->a(Le/r/a/b/a/f/k;I)V

    .line 66
    iget-wide v0, p1, Le/r/a/b/a/f/b;->c:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Le/r/a/b/a/f/b;->c:J

    .line 67
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    return-void

    .line 68
    :cond_2
    iget-object v0, p1, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Le/r/a/b/a/f/k;->a(I)Le/r/a/b/a/f/k;

    move-result-object v0

    iput-object v0, p1, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 69
    :cond_3
    iget-object v0, p1, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 70
    iget v1, v0, Le/r/a/b/a/f/k;->c:I

    iget v3, v0, Le/r/a/b/a/f/k;->b:I

    sub-int/2addr v1, v3

    int-to-long v3, v1

    .line 71
    invoke-virtual {v0}, Le/r/a/b/a/f/k;->a()Le/r/a/b/a/f/k;

    move-result-object v1

    iput-object v1, p1, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 72
    iget-object v1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    if-nez v1, :cond_4

    .line 73
    iput-object v0, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 74
    iget-object v0, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    iput-object v0, v0, Le/r/a/b/a/f/k;->g:Le/r/a/b/a/f/k;

    iput-object v0, v0, Le/r/a/b/a/f/k;->f:Le/r/a/b/a/f/k;

    goto :goto_4

    .line 75
    :cond_4
    iget-object v1, v1, Le/r/a/b/a/f/k;->g:Le/r/a/b/a/f/k;

    .line 76
    invoke-virtual {v1, v0}, Le/r/a/b/a/f/k;->a(Le/r/a/b/a/f/k;)Le/r/a/b/a/f/k;

    .line 77
    iget-object v1, v0, Le/r/a/b/a/f/k;->g:Le/r/a/b/a/f/k;

    if-eq v1, v0, :cond_8

    .line 78
    iget-boolean v5, v1, Le/r/a/b/a/f/k;->e:Z

    if-nez v5, :cond_5

    goto :goto_4

    .line 79
    :cond_5
    iget v5, v0, Le/r/a/b/a/f/k;->c:I

    iget v6, v0, Le/r/a/b/a/f/k;->b:I

    sub-int/2addr v5, v6

    .line 80
    iget v6, v1, Le/r/a/b/a/f/k;->c:I

    rsub-int v6, v6, 0x800

    iget-boolean v7, v1, Le/r/a/b/a/f/k;->d:Z

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    iget v2, v1, Le/r/a/b/a/f/k;->b:I

    :goto_3
    add-int/2addr v6, v2

    if-le v5, v6, :cond_7

    goto :goto_4

    .line 81
    :cond_7
    iget-object v1, v0, Le/r/a/b/a/f/k;->g:Le/r/a/b/a/f/k;

    invoke-virtual {v0, v1, v5}, Le/r/a/b/a/f/k;->a(Le/r/a/b/a/f/k;I)V

    .line 82
    invoke-virtual {v0}, Le/r/a/b/a/f/k;->a()Le/r/a/b/a/f/k;

    .line 83
    invoke-static {v0}, Le/q/d/q/a;->a(Le/r/a/b/a/f/k;)V

    .line 84
    :goto_4
    iget-wide v0, p1, Le/r/a/b/a/f/b;->c:J

    sub-long/2addr v0, v3

    iput-wide v0, p1, Le/r/a/b/a/f/b;->c:J

    .line 85
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    sub-long/2addr p2, v3

    goto/16 :goto_0

    .line 86
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_9
    return-void

    .line 87
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([BII)I
    .locals 7

    .line 7
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Le/r/a/b/a/f/q;->a(JJJ)V

    .line 8
    iget-object v0, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 9
    :cond_0
    iget v1, v0, Le/r/a/b/a/f/k;->c:I

    iget v2, v0, Le/r/a/b/a/f/k;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 10
    iget-object v1, v0, Le/r/a/b/a/f/k;->a:[B

    iget v2, v0, Le/r/a/b/a/f/k;->b:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, v0, Le/r/a/b/a/f/k;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Le/r/a/b/a/f/k;->b:I

    .line 12
    iget-wide p1, p0, Le/r/a/b/a/f/b;->c:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Le/r/a/b/a/f/b;->c:J

    .line 13
    iget p1, v0, Le/r/a/b/a/f/k;->b:I

    iget p2, v0, Le/r/a/b/a/f/k;->c:I

    if-ne p1, p2, :cond_1

    .line 14
    invoke-virtual {v0}, Le/r/a/b/a/f/k;->a()Le/r/a/b/a/f/k;

    move-result-object p1

    iput-object p1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 15
    invoke-static {v0}, Le/q/d/q/a;->a(Le/r/a/b/a/f/k;)V

    :cond_1
    return p3
.end method

.method public b(Le/r/a/b/a/f/b;J)J
    .locals 5

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 24
    iget-wide v2, p0, Le/r/a/b/a/f/b;->c:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    move-wide p2, v2

    .line 25
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Le/r/a/b/a/f/b;->a(Le/r/a/b/a/f/b;J)V

    return-wide p2

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {v0, p2, p3}, Le/c/b/a/a;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Le/r/a/b/a/f/b;
    .locals 0

    return-object p0
.end method

.method public b(I)Le/r/a/b/a/f/b;
    .locals 4

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Le/r/a/b/a/f/b;->c(I)Le/r/a/b/a/f/k;

    move-result-object v0

    .line 22
    iget-object v1, v0, Le/r/a/b/a/f/k;->a:[B

    iget v2, v0, Le/r/a/b/a/f/k;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Le/r/a/b/a/f/k;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 23
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    return-object p0
.end method

.method public b(Lcom/meizu/cloud/pushsdk/a/h/d;)Le/r/a/b/a/f/b;
    .locals 1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1, p0}, Lcom/meizu/cloud/pushsdk/a/h/d;->a(Le/r/a/b/a/f/b;)V

    return-object p0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Le/r/a/b/a/f/b;
    .locals 2

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le/r/a/b/a/f/b;->a(Ljava/lang/String;II)Le/r/a/b/a/f/b;

    return-object p0
.end method

.method public b([B)Le/r/a/b/a/f/b;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 19
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Le/r/a/b/a/f/b;->c([BII)Le/r/a/b/a/f/b;

    return-object p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(J)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Le/r/a/b/a/f/q;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    long-to-int p2, p1

    .line 2
    new-array p1, p2, [B

    const/4 p2, 0x0

    .line 3
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    .line 4
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, p2, v0}, Le/r/a/b/a/f/b;->b([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/2addr p2, v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-static {v1, p1, p2}, Le/c/b/a/a;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c([BII)Le/r/a/b/a/f/b;
    .locals 9

    if-eqz p1, :cond_1

    .line 11
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Le/r/a/b/a/f/q;->a(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Le/r/a/b/a/f/b;->c(I)Le/r/a/b/a/f/k;

    move-result-object v0

    sub-int v1, p3, p2

    .line 13
    iget v2, v0, Le/r/a/b/a/f/k;->c:I

    rsub-int v2, v2, 0x800

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 14
    iget-object v2, v0, Le/r/a/b/a/f/k;->a:[B

    iget v3, v0, Le/r/a/b/a/f/k;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 15
    iget v2, v0, Le/r/a/b/a/f/k;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Le/r/a/b/a/f/k;->c:I

    goto :goto_0

    .line 16
    :cond_0
    iget-wide p1, p0, Le/r/a/b/a/f/b;->c:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Le/r/a/b/a/f/b;->c:J

    return-object p0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)Le/r/a/b/a/f/k;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x800

    if-gt p1, v0, :cond_3

    .line 18
    iget-object v1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    if-nez v1, :cond_0

    .line 19
    invoke-static {}, Le/q/d/q/a;->a()Le/r/a/b/a/f/k;

    move-result-object p1

    iput-object p1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 20
    iget-object p1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    iput-object p1, p1, Le/r/a/b/a/f/k;->g:Le/r/a/b/a/f/k;

    iput-object p1, p1, Le/r/a/b/a/f/k;->f:Le/r/a/b/a/f/k;

    return-object p1

    .line 21
    :cond_0
    iget-object v1, v1, Le/r/a/b/a/f/k;->g:Le/r/a/b/a/f/k;

    .line 22
    iget v2, v1, Le/r/a/b/a/f/k;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean p1, v1, Le/r/a/b/a/f/k;->e:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    invoke-static {}, Le/q/d/q/a;->a()Le/r/a/b/a/f/k;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/r/a/b/a/f/k;->a(Le/r/a/b/a/f/k;)Le/r/a/b/a/f/k;

    :goto_1
    return-object p1

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public c(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 3
    iget-object v0, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    if-eqz v0, :cond_1

    .line 4
    iget v1, v0, Le/r/a/b/a/f/k;->c:I

    iget v0, v0, Le/r/a/b/a/f/k;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 5
    iget-wide v2, p0, Le/r/a/b/a/f/b;->c:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Le/r/a/b/a/f/b;->c:J

    sub-long/2addr p1, v4

    .line 6
    iget-object v0, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    iget v2, v0, Le/r/a/b/a/f/k;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Le/r/a/b/a/f/k;->b:I

    .line 7
    iget v1, v0, Le/r/a/b/a/f/k;->b:I

    iget v2, v0, Le/r/a/b/a/f/k;->c:I

    if-ne v1, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Le/r/a/b/a/f/k;->a()Le/r/a/b/a/f/k;

    move-result-object v1

    iput-object v1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 9
    invoke-static {v0}, Le/q/d/q/a;->a(Le/r/a/b/a/f/k;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public c()[B
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    invoke-virtual {p0, v0, v1}, Le/r/a/b/a/f/b;->b(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/r/a/b/a/f/b;->g()Le/r/a/b/a/f/b;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d(J)Le/r/a/b/a/f/b;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 2
    invoke-virtual {p0, p1}, Le/r/a/b/a/f/b;->b(I)Le/r/a/b/a/f/b;

    return-object p0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 3
    invoke-virtual {p0, p1}, Le/r/a/b/a/f/b;->b(Ljava/lang/String;)Le/r/a/b/a/f/b;

    return-object p0

    :cond_1
    const/4 v3, 0x1

    :cond_2
    const-wide/32 v5, 0x5f5e100

    const-wide/16 v7, 0xa

    cmp-long v2, p1, v5

    if-gez v2, :cond_a

    const-wide/16 v5, 0x2710

    cmp-long v2, p1, v5

    if-gez v2, :cond_6

    const-wide/16 v5, 0x64

    cmp-long v2, p1, v5

    if-gez v2, :cond_4

    cmp-long v2, p1, v7

    if-gez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v4, 0x3e8

    cmp-long v2, p1, v4

    if-gez v2, :cond_5

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v4, 0xf4240

    cmp-long v2, p1, v4

    if-gez v2, :cond_8

    const-wide/32 v4, 0x186a0

    cmp-long v2, p1, v4

    if-gez v2, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v4, 0x989680

    cmp-long v2, p1, v4

    if-gez v2, :cond_9

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v4, 0xe8d4a51000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_e

    const-wide v4, 0x2540be400L

    cmp-long v2, p1, v4

    if-gez v2, :cond_c

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, p1, v4

    if-gez v2, :cond_b

    const/16 v4, 0x9

    goto :goto_0

    :cond_b
    const/16 v4, 0xa

    goto :goto_0

    :cond_c
    const-wide v4, 0x174876e800L

    cmp-long v2, p1, v4

    if-gez v2, :cond_d

    const/16 v4, 0xb

    goto :goto_0

    :cond_d
    const/16 v4, 0xc

    goto :goto_0

    :cond_e
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_11

    const-wide v4, 0x9184e72a000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_f

    const/16 v4, 0xd

    goto :goto_0

    :cond_f
    const-wide v4, 0x5af3107a4000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_10

    const/16 v4, 0xe

    goto :goto_0

    :cond_10
    const/16 v4, 0xf

    goto :goto_0

    :cond_11
    const-wide v4, 0x16345785d8a0000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_13

    const-wide v4, 0x2386f26fc10000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_12

    const/16 v4, 0x10

    goto :goto_0

    :cond_12
    const/16 v4, 0x11

    goto :goto_0

    :cond_13
    const-wide v4, 0xde0b6b3a7640000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_14

    const/16 v4, 0x12

    goto :goto_0

    :cond_14
    const/16 v4, 0x13

    :goto_0
    if-eqz v3, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 4
    :cond_15
    invoke-virtual {p0, v4}, Le/r/a/b/a/f/b;->c(I)Le/r/a/b/a/f/k;

    move-result-object v2

    .line 5
    iget-object v5, v2, Le/r/a/b/a/f/k;->a:[B

    .line 6
    iget v6, v2, Le/r/a/b/a/f/k;->c:I

    add-int/2addr v6, v4

    :goto_1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_16

    .line 7
    rem-long v9, p1, v7

    long-to-int v10, v9

    add-int/lit8 v6, v6, -0x1

    .line 8
    sget-object v9, Le/r/a/b/a/f/b;->a:[B

    aget-byte v9, v9, v10

    aput-byte v9, v5, v6

    .line 9
    div-long/2addr p1, v7

    goto :goto_1

    :cond_16
    if-eqz v3, :cond_17

    add-int/lit8 v6, v6, -0x1

    const/16 p1, 0x2d

    .line 10
    aput-byte p1, v5, v6

    .line 11
    :cond_17
    iget p1, v2, Le/r/a/b/a/f/k;->c:I

    add-int/2addr p1, v4

    iput p1, v2, Le/r/a/b/a/f/k;->c:I

    .line 12
    iget-wide p1, p0, Le/r/a/b/a/f/b;->c:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Le/r/a/b/a/f/b;->c:J

    return-object p0
.end method

.method public d()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Le/r/a/b/a/f/a;

    invoke-direct {v0, p0}, Le/r/a/b/a/f/a;-><init>(Le/r/a/b/a/f/b;)V

    return-object v0
.end method

.method public e()B
    .locals 9

    .line 1
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-object v2, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 3
    iget v3, v2, Le/r/a/b/a/f/k;->b:I

    .line 4
    iget v4, v2, Le/r/a/b/a/f/k;->c:I

    .line 5
    iget-object v5, v2, Le/r/a/b/a/f/k;->a:[B

    add-int/lit8 v6, v3, 0x1

    .line 6
    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    .line 7
    iput-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    if-ne v6, v4, :cond_0

    .line 8
    invoke-virtual {v2}, Le/r/a/b/a/f/k;->a()Le/r/a/b/a/f/k;

    move-result-object v0

    iput-object v0, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 9
    invoke-static {v2}, Le/q/d/q/a;->a(Le/r/a/b/a/f/k;)V

    goto :goto_0

    .line 10
    :cond_0
    iput v6, v2, Le/r/a/b/a/f/k;->b:I

    :goto_0
    return v3

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/r/a/b/a/f/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Le/r/a/b/a/f/b;

    .line 3
    iget-wide v3, p0, Le/r/a/b/a/f/b;->c:J

    iget-wide v5, p1, Le/r/a/b/a/f/b;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    .line 4
    :cond_3
    iget-object v1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 5
    iget-object p1, p1, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 6
    iget v3, v1, Le/r/a/b/a/f/k;->b:I

    .line 7
    iget v4, p1, Le/r/a/b/a/f/k;->b:I

    .line 8
    :goto_0
    iget-wide v7, p0, Le/r/a/b/a/f/b;->c:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_8

    .line 9
    iget v7, v1, Le/r/a/b/a/f/k;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Le/r/a/b/a/f/k;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    int-to-long v10, v3

    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    .line 10
    iget-object v10, v1, Le/r/a/b/a/f/k;->a:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, Le/r/a/b/a/f/k;->a:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_1

    .line 11
    :cond_5
    iget v3, v1, Le/r/a/b/a/f/k;->c:I

    if-ne v4, v3, :cond_6

    .line 12
    iget-object v1, v1, Le/r/a/b/a/f/k;->f:Le/r/a/b/a/f/k;

    .line 13
    iget v3, v1, Le/r/a/b/a/f/k;->b:I

    goto :goto_2

    :cond_6
    move v3, v4

    .line 14
    :goto_2
    iget v4, p1, Le/r/a/b/a/f/k;->c:I

    if-ne v9, v4, :cond_7

    .line 15
    iget-object p1, p1, Le/r/a/b/a/f/k;->f:Le/r/a/b/a/f/k;

    .line 16
    iget v4, p1, Le/r/a/b/a/f/k;->b:I

    goto :goto_3

    :cond_7
    move v4, v9

    :goto_3
    add-long/2addr v5, v7

    goto :goto_0

    :cond_8
    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    invoke-virtual {p0, v0, v1}, Le/r/a/b/a/f/b;->c(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g()Le/r/a/b/a/f/b;
    .locals 6

    .line 1
    new-instance v0, Le/r/a/b/a/f/b;

    invoke-direct {v0}, Le/r/a/b/a/f/b;-><init>()V

    .line 2
    iget-wide v1, p0, Le/r/a/b/a/f/b;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Le/r/a/b/a/f/k;

    iget-object v2, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    invoke-direct {v1, v2}, Le/r/a/b/a/f/k;-><init>(Le/r/a/b/a/f/k;)V

    iput-object v1, v0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    .line 4
    iget-object v1, v0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    iput-object v1, v1, Le/r/a/b/a/f/k;->g:Le/r/a/b/a/f/k;

    iput-object v1, v1, Le/r/a/b/a/f/k;->f:Le/r/a/b/a/f/k;

    .line 5
    iget-object v1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    :goto_0
    iget-object v1, v1, Le/r/a/b/a/f/k;->f:Le/r/a/b/a/f/k;

    iget-object v2, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    if-eq v1, v2, :cond_1

    .line 6
    iget-object v2, v0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    iget-object v2, v2, Le/r/a/b/a/f/k;->g:Le/r/a/b/a/f/k;

    new-instance v3, Le/r/a/b/a/f/k;

    invoke-direct {v3, v1}, Le/r/a/b/a/f/k;-><init>(Le/r/a/b/a/f/k;)V

    invoke-virtual {v2, v3}, Le/r/a/b/a/f/k;->a(Le/r/a/b/a/f/k;)Le/r/a/b/a/f/k;

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v1, p0, Le/r/a/b/a/f/b;->c:J

    iput-wide v1, v0, Le/r/a/b/a/f/b;->c:J

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 2
    :cond_1
    iget v2, v0, Le/r/a/b/a/f/k;->b:I

    iget v3, v0, Le/r/a/b/a/f/k;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v4, v0, Le/r/a/b/a/f/k;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, v0, Le/r/a/b/a/f/k;->f:Le/r/a/b/a/f/k;

    .line 5
    iget-object v2, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-wide v0, p0, Le/r/a/b/a/f/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "Buffer[size=0]"

    return-object v0

    :cond_0
    const-wide/16 v2, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    cmp-long v7, v0, v2

    if-gtz v7, :cond_1

    .line 2
    invoke-virtual {p0}, Le/r/a/b/a/f/b;->g()Le/r/a/b/a/f/b;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/meizu/cloud/pushsdk/a/h/d;

    invoke-virtual {v0}, Le/r/a/b/a/f/b;->c()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/a/h/d;-><init>([B)V

    .line 4
    new-array v0, v6, [Ljava/lang/Object;

    iget-wide v2, p0, Le/r/a/b/a/f/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/a/h/d;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Buffer[size=%s data=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "MD5"

    .line 5
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    iget-object v1, v1, Le/r/a/b/a/f/k;->a:[B

    iget-object v2, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    iget v2, v2, Le/r/a/b/a/f/k;->b:I

    iget-object v3, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    iget v3, v3, Le/r/a/b/a/f/k;->c:I

    iget-object v7, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    iget v7, v7, Le/r/a/b/a/f/k;->b:I

    sub-int/2addr v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 7
    iget-object v1, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    :goto_0
    iget-object v1, v1, Le/r/a/b/a/f/k;->f:Le/r/a/b/a/f/k;

    iget-object v2, p0, Le/r/a/b/a/f/b;->b:Le/r/a/b/a/f/k;

    if-eq v1, v2, :cond_2

    .line 8
    iget-object v2, v1, Le/r/a/b/a/f/k;->a:[B

    iget v3, v1, Le/r/a/b/a/f/k;->b:I

    iget v7, v1, Le/r/a/b/a/f/k;->c:I

    sub-int/2addr v7, v3

    invoke-virtual {v0, v2, v3, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_2
    const-string v1, "Buffer[size=%s md5=%s]"

    .line 9
    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v6, p0, Le/r/a/b/a/f/b;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/a/h/d;->a([B)Lcom/meizu/cloud/pushsdk/a/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/a/h/d;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
