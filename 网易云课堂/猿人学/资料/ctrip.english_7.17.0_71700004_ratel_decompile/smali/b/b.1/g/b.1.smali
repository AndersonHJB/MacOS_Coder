.class public abstract Lb/b/g/b;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final a:Lb/b/g/a;

.field public final b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionMenuView;

.field public d:Lb/b/g/i;

.field public e:I

.field public f:Lb/j/i/K;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p2, Lb/b/g/a;

    invoke-direct {p2, p0}, Lb/b/g/a;-><init>(Lb/b/g/b;)V

    iput-object p2, p0, Lb/b/g/b;->a:Lb/b/g/a;

    .line 3
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v0, Lb/b/a;->actionBarPopupTheme:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_0

    .line 5
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lb/b/g/b;->b:Landroid/content/Context;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lb/b/g/b;->b:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method public static a(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static synthetic a(Lb/b/g/b;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static synthetic b(Lb/b/g/b;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;III)I
    .locals 1

    const/high16 v0, -0x80000000

    .line 18
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, p4

    const/4 p1, 0x0

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;IIIZ)I
    .locals 3

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p4, v1, v2, p3}, Le/c/b/a/a;->b(IIII)I

    move-result p3

    if-eqz p5, :cond_0

    sub-int p4, p2, v0

    add-int/2addr v1, p3

    .line 23
    invoke-virtual {p1, p4, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    add-int p4, p2, v0

    add-int/2addr v1, p3

    .line 24
    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p5, :cond_1

    neg-int v0, v0

    :cond_1
    return v0
.end method

.method public a(IJ)Lb/j/i/K;
    .locals 2

    .line 2
    iget-object v0, p0, Lb/b/g/b;->f:Lb/j/i/K;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/j/i/K;->a()V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 6
    :cond_1
    invoke-static {p0}, Lb/j/i/E;->a(Landroid/view/View;)Lb/j/i/K;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lb/j/i/K;->a(F)Lb/j/i/K;

    .line 7
    invoke-virtual {v0, p2, p3}, Lb/j/i/K;->a(J)Lb/j/i/K;

    .line 8
    iget-object p2, p0, Lb/b/g/b;->a:Lb/b/g/a;

    .line 9
    iget-object p3, p2, Lb/b/g/a;->c:Lb/b/g/b;

    iput-object v0, p3, Lb/b/g/b;->f:Lb/j/i/K;

    .line 10
    iput p1, p2, Lb/b/g/a;->b:I

    .line 11
    invoke-virtual {v0, p2}, Lb/j/i/K;->a(Lb/j/i/L;)Lb/j/i/K;

    return-object v0

    .line 12
    :cond_2
    invoke-static {p0}, Lb/j/i/E;->a(Landroid/view/View;)Lb/j/i/K;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/j/i/K;->a(F)Lb/j/i/K;

    .line 13
    invoke-virtual {v1, p2, p3}, Lb/j/i/K;->a(J)Lb/j/i/K;

    .line 14
    iget-object p2, p0, Lb/b/g/b;->a:Lb/b/g/a;

    .line 15
    iget-object p3, p2, Lb/b/g/a;->c:Lb/b/g/b;

    iput-object v1, p3, Lb/b/g/b;->f:Lb/j/i/K;

    .line 16
    iput p1, p2, Lb/b/g/a;->b:I

    .line 17
    invoke-virtual {v1, p2}, Lb/j/i/K;->a(Lb/j/i/L;)Lb/j/i/K;

    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lb/b/j;->ActionBar:[I

    sget v1, Lb/b/a;->actionBarStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget v0, Lb/b/j;->ActionBar_height:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/g/b;->setContentHeight(I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    iget-object p1, p0, Lb/b/g/b;->d:Lb/b/g/i;

    if-eqz p1, :cond_8

    .line 6
    iget-boolean v0, p1, Lb/b/g/i;->q:Z

    if-nez v0, :cond_7

    .line 7
    iget-object v0, p1, Lb/b/f/a/b;->b:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 9
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 10
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-gt v0, v3, :cond_6

    if-gt v1, v3, :cond_6

    const/16 v0, 0x2d0

    const/16 v3, 0x3c0

    if-le v1, v3, :cond_0

    if-gt v2, v0, :cond_6

    :cond_0
    if-le v1, v0, :cond_1

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x1f4

    if-ge v1, v0, :cond_5

    const/16 v0, 0x1e0

    const/16 v3, 0x280

    if-le v1, v3, :cond_2

    if-gt v2, v0, :cond_5

    :cond_2
    if-le v1, v0, :cond_3

    if-le v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x168

    if-lt v1, v0, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x5

    .line 12
    :goto_2
    iput v0, p1, Lb/b/g/i;->p:I

    .line 13
    :cond_7
    iget-object p1, p1, Lb/b/f/a/b;->c:Lb/b/f/a/o;

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lb/b/f/a/o;->b(Z)V

    :cond_8
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Lb/b/g/b;->h:Z

    .line 3
    :cond_0
    iget-boolean v3, p0, Lb/b/g/b;->h:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v4, p0, Lb/b/g/b;->h:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Lb/b/g/b;->h:Z

    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lb/b/g/b;->g:Z

    .line 3
    :cond_0
    iget-boolean v2, p0, Lb/b/g/b;->g:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v3, p0, Lb/b/g/b;->g:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Lb/b/g/b;->g:Z

    :cond_3
    return v3
.end method

.method public abstract setContentHeight(I)V
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/b/g/b;->f:Lb/j/i/K;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/j/i/K;->a()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method
