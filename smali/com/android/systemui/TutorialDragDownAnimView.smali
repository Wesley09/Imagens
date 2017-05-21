.class public Lcom/android/systemui/TutorialDragDownAnimView;
.super Landroid/widget/FrameLayout;
.source "TutorialDragDownAnimView.java"


# static fields
.field private static final START_DRAG_UP1:I = 0x1

.field private static final START_DRAG_UP2:I = 0x2

.field private static final START_DRAG_UP3:I = 0x3

.field private static final START_DRAG_UP4:I = 0x4

.field private static final TAG:Ljava/lang/String; = "STATUSBAR-DropDownAnimView"

.field private static final TUTORIAL_FINISH:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragDownImageView:[Landroid/widget/ImageView;

.field private mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/TutorialDragDownAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/TutorialDragDownAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-array v0, v1, [Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

    .line 20
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;

    .line 62
    new-instance v0, Lcom/android/systemui/TutorialDragDownAnimView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialDragDownAnimView$1;-><init>(Lcom/android/systemui/TutorialDragDownAnimView;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mContext:Landroid/content/Context;

    .line 41
    const v0, 0x7f040045

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    iget-object v1, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 44
    iget-object v1, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f090126

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 45
    iget-object v1, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 46
    iget-object v1, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f090128

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialDragDownAnimView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialDragDownAnimView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private hideDragDownAnimation()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "STATUSBAR-DropDownAnimView"

    const-string v1, "hideDragDownAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/TutorialDragDownAnimView;->stopDragDownAnimation()V

    .line 123
    return-void
.end method

.method private showDragDownAnimation()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "STATUSBAR-DropDownAnimView"

    const-string v1, "showDragDownAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/TutorialDragDownAnimView;->startDragDownAnimation()V

    .line 133
    return-void
.end method

.method private startDragDownAnimation()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "STATUSBAR-DropDownAnimView"

    const-string v1, "startDragDownAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method

.method private stopDragDownAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    const-string v0, "STATUSBAR-DropDownAnimView"

    const-string v1, "stopDragDownAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 118
    :cond_3
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 60
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/TutorialDragDownAnimView;->stopDragDownAnimation()V

    .line 140
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/TutorialDragDownAnimView;->showDragDownAnimation()V

    .line 55
    return-void
.end method
