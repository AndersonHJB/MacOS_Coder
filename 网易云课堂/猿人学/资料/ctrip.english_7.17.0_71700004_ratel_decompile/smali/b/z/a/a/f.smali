.class public Lb/z/a/a/f;
.super Lb/z/a/a/i;
.source "SourceFile"

# interfaces
.implements Lb/z/a/a/b;


# instance fields
.field public b:Lb/z/a/a/d;

.field public c:Landroid/content/Context;

.field public d:Landroid/animation/ArgbEvaluator;

.field public final e:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/z/a/a/d;Landroid/content/res/Resources;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb/z/a/a/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/z/a/a/f;->d:Landroid/animation/ArgbEvaluator;

    .line 3
    new-instance v0, Lb/z/a/a/c;

    invoke-direct {v0, p0}, Lb/z/a/a/c;-><init>(Lb/z/a/a/f;)V

    iput-object v0, p0, Lb/z/a/a/f;->e:Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    iput-object p1, p0, Lb/z/a/a/f;->c:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 5
    iput-object p2, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lb/z/a/a/d;

    iget-object v1, p0, Lb/z/a/a/f;->e:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, p2, v1, p3}, Lb/z/a/a/d;-><init>(Landroid/content/Context;Lb/z/a/a/d;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/z/a/a/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lb/z/a/a/f;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1, v1}, Lb/z/a/a/f;-><init>(Landroid/content/Context;Lb/z/a/a/d;Landroid/content/res/Resources;)V

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lb/z/a/a/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 4
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object v1, v0, Lb/z/a/a/k;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 7
    iget-object v1, v0, Lb/z/a/a/k;->j:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, v0, Lb/z/a/a/k;->j:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    iget-object v1, v0, Lb/z/a/a/k;->e:Landroid/graphics/ColorFilter;

    if-nez v1, :cond_3

    iget-object v1, v0, Lb/z/a/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 9
    :cond_3
    iget-object v2, v0, Lb/z/a/a/k;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 10
    iget-object v2, v0, Lb/z/a/a/k;->i:Landroid/graphics/Matrix;

    iget-object v3, v0, Lb/z/a/a/k;->h:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 11
    iget-object v2, v0, Lb/z/a/a/k;->h:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 12
    iget-object v4, v0, Lb/z/a/a/k;->h:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 13
    iget-object v5, v0, Lb/z/a/a/k;->h:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 14
    iget-object v7, v0, Lb/z/a/a/k;->h:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-nez v5, :cond_4

    cmpl-float v5, v7, v8

    if-eqz v5, :cond_5

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    :cond_5
    iget-object v5, v0, Lb/z/a/a/k;->j:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v2, v5

    .line 16
    iget-object v5, v0, Lb/z/a/a/k;->j:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v4, v5

    const/16 v5, 0x800

    .line 17
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 18
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lez v2, :cond_b

    if-gtz v4, :cond_6

    goto :goto_2

    .line 19
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 20
    iget-object v7, v0, Lb/z/a/a/k;->j:Landroid/graphics/Rect;

    iget v10, v7, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v10, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 21
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    invoke-virtual {v0}, Lb/z/a/a/k;->isAutoMirrored()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 23
    invoke-static {v0}, LTb;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v7

    if-ne v7, v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_8

    .line 24
    iget-object v6, v0, Lb/z/a/a/k;->j:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    .line 25
    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 26
    :cond_8
    iget-object v6, v0, Lb/z/a/a/k;->j:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 27
    iget-object v3, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    invoke-virtual {v3, v2, v4}, Lb/z/a/a/k$f;->b(II)V

    .line 28
    iget-boolean v3, v0, Lb/z/a/a/k;->g:Z

    if-nez v3, :cond_9

    .line 29
    iget-object v3, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    invoke-virtual {v3, v2, v4}, Lb/z/a/a/k$f;->c(II)V

    goto :goto_1

    .line 30
    :cond_9
    iget-object v3, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    invoke-virtual {v3}, Lb/z/a/a/k$f;->a()Z

    move-result v3

    if-nez v3, :cond_a

    .line 31
    iget-object v3, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    invoke-virtual {v3, v2, v4}, Lb/z/a/a/k$f;->c(II)V

    .line 32
    iget-object v2, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    invoke-virtual {v2}, Lb/z/a/a/k$f;->d()V

    .line 33
    :cond_a
    :goto_1
    iget-object v2, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    iget-object v0, v0, Lb/z/a/a/k;->j:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1, v0}, Lb/z/a/a/k$f;->a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 34
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 35
    :cond_b
    :goto_2
    iget-object p1, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object p1, p1, Lb/z/a/a/d;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_c
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 5
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    iget-object v0, v0, Lb/z/a/a/k$f;->b:Lb/z/a/a/k$e;

    invoke-virtual {v0}, Lb/z/a/a/k$e;->getRootAlpha()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget v1, v1, Lb/z/a/a/d;->a:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 5
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v0, Lb/z/a/a/k;->e:Landroid/graphics/ColorFilter;

    :goto_0
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 2
    new-instance v1, Lb/z/a/a/e;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/z/a/a/e;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 4
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    iget-object v0, v0, Lb/z/a/a/k$f;->b:Lb/z/a/a/k$e;

    iget v0, v0, Lb/z/a/a/k$e;->k:F

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 4
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    iget-object v0, v0, Lb/z/a/a/k$f;->b:Lb/z/a/a/k$e;

    iget v0, v0, Lb/z/a/a/k$e;->j:F

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 4
    iget-object v0, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x3

    :goto_0
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, p2, p3, v0}, Lb/z/a/a/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    iget-object v4, v1, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v6, p2

    .line 3
    invoke-virtual {v4, v0, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_0
    move-object/from16 v6, p2

    .line 4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    :goto_0
    if-eq v4, v7, :cond_b

    .line 6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ge v8, v5, :cond_1

    const/4 v8, 0x3

    if-eq v4, v8, :cond_b

    :cond_1
    const/4 v8, 0x2

    if-ne v4, v8, :cond_a

    .line 7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "animated-vector"

    .line 8
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v8, :cond_4

    .line 9
    sget-object v4, Lb/z/a/a/a;->e:[I

    .line 10
    invoke-static {v0, v3, v2, v4}, LTb;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eqz v8, :cond_3

    .line 12
    invoke-static {v0, v8, v3}, Lb/z/a/a/k;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lb/z/a/a/k;

    move-result-object v8

    .line 13
    iput-boolean v10, v8, Lb/z/a/a/k;->g:Z

    .line 14
    iget-object v10, v1, Lb/z/a/a/f;->e:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15
    iget-object v10, v1, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v10, v10, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    if-eqz v10, :cond_2

    .line 16
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 17
    :cond_2
    iget-object v9, v1, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iput-object v8, v9, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 18
    :cond_3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_6

    :cond_4
    const-string v8, "target"

    .line 19
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 20
    sget-object v4, Lb/z/a/a/a;->f:[I

    .line 21
    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 22
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-eqz v10, :cond_9

    .line 24
    iget-object v11, v1, Lb/z/a/a/f;->c:Landroid/content/Context;

    if-eqz v11, :cond_8

    .line 25
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x18

    if-lt v12, v13, :cond_5

    .line 26
    invoke-static {v11, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v9

    move-object v7, v9

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const-string v15, "Can\'t load animation resource ID #0x"

    .line 28
    :try_start_0
    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 29
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v16
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v14, v9

    move-object v7, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    :try_start_1
    invoke-static/range {v11 .. v18}, Lb/y/aa;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v7
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 31
    :goto_1
    iget-object v9, v1, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v9, v9, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 32
    iget-object v9, v9, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    iget-object v9, v9, Lb/z/a/a/k$f;->b:Lb/z/a/a/k$e;

    iget-object v9, v9, Lb/z/a/a/k$e;->q:Lb/g/b;

    invoke-virtual {v9, v8}, Lb/g/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 33
    invoke-virtual {v7, v9}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 34
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    iget-object v9, v1, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v10, v9, Lb/z/a/a/d;->d:Ljava/util/ArrayList;

    if-nez v10, :cond_6

    .line 36
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lb/z/a/a/d;->d:Ljava/util/ArrayList;

    .line 37
    iget-object v9, v1, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    new-instance v10, Lb/g/b;

    invoke-direct {v10}, Lb/g/b;-><init>()V

    iput-object v10, v9, Lb/z/a/a/d;->e:Lb/g/b;

    .line 38
    :cond_6
    iget-object v9, v1, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v9, v9, Lb/z/a/a/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v9, v1, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v9, v9, Lb/z/a/a/d;->e:Lb/g/b;

    invoke-virtual {v9, v7, v8}, Lb/g/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v15

    .line 40
    :goto_2
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 43
    throw v2

    :catch_3
    move-exception v0

    move-object v7, v15

    .line 44
    :goto_3
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 47
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-eqz v9, :cond_7

    .line 48
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 49
    :cond_7
    throw v0

    .line 50
    :cond_8
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Context can\'t be null when inflating animators"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_9
    :goto_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    :cond_a
    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 54
    :cond_b
    iget-object v0, v1, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    .line 55
    iget-object v2, v0, Lb/z/a/a/d;->c:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_c

    .line 56
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lb/z/a/a/d;->c:Landroid/animation/AnimatorSet;

    .line 57
    :cond_c
    iget-object v2, v0, Lb/z/a/a/d;->c:Landroid/animation/AnimatorSet;

    iget-object v0, v0, Lb/z/a/a/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, LTb;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 4
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, LTb;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    iget-boolean v0, v0, Lb/z/a/a/k$f;->e:Z

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    invoke-virtual {v0}, Lb/z/a/a/k;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    invoke-virtual {v0, p1}, Lb/z/a/a/i;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 4
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    iget-object v1, v1, Lb/z/a/a/k$f;->b:Lb/z/a/a/k$e;

    invoke-virtual {v1}, Lb/z/a/a/k$e;->getRootAlpha()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 7
    iget-object v1, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    iget-object v1, v1, Lb/z/a/a/k$f;->b:Lb/z/a/a/k$e;

    invoke-virtual {v1, p1}, Lb/z/a/a/k$e;->setRootAlpha(I)V

    .line 8
    invoke-virtual {v0}, Lb/z/a/a/k;->invalidateSelf()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 5
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    iput-boolean p1, v0, Lb/z/a/a/k$f;->e:Z

    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 4
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 6
    :cond_1
    iput-object p1, v0, Lb/z/a/a/k;->e:Landroid/graphics/ColorFilter;

    .line 7
    invoke-virtual {v0}, Lb/z/a/a/k;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public setTint(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 5
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/z/a/a/k;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    invoke-virtual {v0, p1}, Lb/z/a/a/k;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    .line 5
    iget-object v1, v0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Lb/z/a/a/k;->c:Lb/z/a/a/k$f;

    .line 9
    iget-object v2, v1, Lb/z/a/a/k$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v2, p1, :cond_2

    .line 10
    iput-object p1, v1, Lb/z/a/a/k$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iget-object v2, v0, Lb/z/a/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, v1, Lb/z/a/a/k$f;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v1, p1}, Lb/z/a/a/k;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, v0, Lb/z/a/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 12
    invoke-virtual {v0}, Lb/z/a/a/k;->invalidateSelf()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->b:Lb/z/a/a/k;

    invoke-virtual {v0, p1, p2}, Lb/z/a/a/k;->setVisible(ZZ)Z

    .line 4
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/a/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/a/a/f;->b:Lb/z/a/a/d;

    iget-object v0, v0, Lb/z/a/a/d;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method
