.class public Lf/a/c/j/f/a/a;
.super Lf/a/c/j/f/a/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field public final k:Landroid/view/animation/Animation;

.field public final l:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Mode;Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lf/a/c/j/f/a/b;-><init>(Landroid/content/Context;Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Mode;Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 2
    sget-object p1, Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p2, p1, :cond_0

    const/16 p1, -0xb4

    goto :goto_0

    :cond_0
    const/16 p1, 0xb4

    .line 3
    :goto_0
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float p1, p1

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p2

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lf/a/c/j/f/a/a;->k:Landroid/view/animation/Animation;

    .line 4
    iget-object p2, p0, Lf/a/c/j/f/a/a;->k:Landroid/view/animation/Animation;

    sget-object p3, Lf/a/c/j/f/a/b;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5
    iget-object p2, p0, Lf/a/c/j/f/a/a;->k:Landroid/view/animation/Animation;

    const-wide/16 p3, 0x96

    invoke-virtual {p2, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 6
    iget-object p2, p0, Lf/a/c/j/f/a/a;->k:Landroid/view/animation/Animation;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 7
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, p2

    move v3, p1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lf/a/c/j/f/a/a;->l:Landroid/view/animation/Animation;

    .line 8
    iget-object p1, p0, Lf/a/c/j/f/a/a;->l:Landroid/view/animation/Animation;

    sget-object p2, Lf/a/c/j/f/a/b;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9
    iget-object p1, p0, Lf/a/c/j/f/a/a;->l:Landroid/view/animation/Animation;

    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10
    iget-object p1, p0, Lf/a/c/j/f/a/a;->l:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method private getDrawableRotationAngle()F
    .locals 3

    const-string v0, "dddfa563fe9fd7a0a4ab6dce82d273da"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/hotfix/patchdispatcher/ASMUtils;->getInterface(Ljava/lang/String;I)Lcom/hotfix/patchdispatcher/IChangeDispatcher;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/hotfix/patchdispatcher/ASMUtils;->getInterface(Ljava/lang/String;I)Lcom/hotfix/patchdispatcher/IChangeDispatcher;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p0}, Lcom/hotfix/patchdispatcher/IChangeDispatcher;->accessFunc(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lf/a/c/j/f/a/b;->h:Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lf/a/c/j/f/a/b;->i:Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v1, Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 3
    :cond_3
    iget-object v1, p0, Lf/a/c/j/f/a/b;->i:Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v2, Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lctrip/android/basebusiness/ui/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne v1, v2, :cond_4

    const/high16 v0, 0x43870000    # 270.0f

    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const-string v0, "dddfa563fe9fd7a0a4ab6dce82d273da"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hotfix/patchdispatcher/ASMUtils;->getInterface(Ljava/lang/String;I)Lcom/hotfix/patchdispatcher/IChangeDispatcher;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/hotfix/patchdispatcher/ASMUtils;->getInterface(Ljava/lang/String;I)Lcom/hotfix/patchdispatcher/IChangeDispatcher;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2, p0}, Lcom/hotfix/patchdispatcher/IChangeDispatcher;->accessFunc(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 3
    iget-object v1, p0, Lf/a/c/j/f/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget-object v2, p0, Lf/a/c/j/f/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 6
    iget-object v2, p0, Lf/a/c/j/f/a/b;->c:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v0, v3

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9
    invoke-direct {p0}, Lf/a/c/j/f/a/a;->getDrawableRotationAngle()F

    move-result p1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v2, p1, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 10
    iget-object p1, p0, Lf/a/c/j/f/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "dddfa563fe9fd7a0a4ab6dce82d273da"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/hotfix/patchdispatcher/ASMUtils;->getInterface(Ljava/lang/String;I)Lcom/hotfix/patchdispatcher/IChangeDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/hotfix/patchdispatcher/ASMUtils;->getInterface(Ljava/lang/String;I)Lcom/hotfix/patchdispatcher/IChangeDispatcher;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p0}, Lcom/hotfix/patchdispatcher/IChangeDispatcher;->accessFunc(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lf/a/c/j/f/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lf/a/c/j/f/a/b;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lf/a/c/j/f/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public getDefaultDrawableResId()I
    .locals 3

    const-string v0, "dddfa563fe9fd7a0a4ab6dce82d273da"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/hotfix/patchdispatcher/ASMUtils;->getInterface(Ljava/lang/String;I)Lcom/hotfix/patchdispatcher/IChangeDispatcher;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/hotfix/patchdispatcher/ASMUtils;->getInterface(Ljava/lang/String;I)Lcom/hotfix/patchdispatcher/IChangeDispatcher;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p0}, Lcom/hotfix/patchdispatcher/IChangeDispatcher;->accessFunc(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1
    :cond_0
    sget v0, Lf/a/d/e;->common_default_ptr_flip:I

    return v0
.end method
