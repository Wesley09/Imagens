.class public Lcom/android/systemui/TutorialExpandNotification;
.super Landroid/app/Activity;
.source "TutorialExpandNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "STATUSBAR-ExpandNotificationTutorial"

.field private static expandnotifopenHeight:I

.field private static flag:Z

.field private static marginTop:I


# instance fields
.field private ArrowLayoutParams1:Landroid/widget/FrameLayout$LayoutParams;

.field private ArrowLayoutParams2:Landroid/widget/FrameLayout$LayoutParams;

.field private h:Landroid/os/Handler;

.field private helpEnd:Ljava/lang/Runnable;

.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragDownHandler:Landroid/os/Handler;

.field private mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;

.field private mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;

.field private mExpandNotification:Landroid/widget/FrameLayout;

.field private mHelpAnimView:Landroid/widget/FrameLayout;

.field private mHelpExpandNotiCompleteTip:Landroid/widget/FrameLayout;

.field private mHelpExpandNotificationClose:Landroid/widget/ImageView;

.field private mHelpExpandNotificationCloseLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private mHelpExpandNotificationHandler:Landroid/widget/ImageView;

.field private mHelpExpandNotificationOpen:Landroid/widget/ImageView;

.field private mHelpExpandNotificationOpenLayout:Landroid/widget/LinearLayout$LayoutParams;

.field private mHelpExpandNotificationTip:Landroid/widget/FrameLayout;

.field private mHelpExpandNotificationTipLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private mMsgTail:Landroid/widget/ImageView;

.field private mMsgTailLayout:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/TutorialExpandNotification;->flag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationCloseLayout:Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    iput-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpenLayout:Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    iput-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mMsgTailLayout:Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    iput-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->ArrowLayoutParams1:Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    iput-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->ArrowLayoutParams2:Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    iput-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationTipLayout:Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->h:Landroid/os/Handler;

    .line 370
    new-instance v0, Lcom/android/systemui/TutorialExpandNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialExpandNotification$1;-><init>(Lcom/android/systemui/TutorialExpandNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->helpEnd:Ljava/lang/Runnable;

    .line 378
    new-instance v0, Lcom/android/systemui/TutorialExpandNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialExpandNotification$2;-><init>(Lcom/android/systemui/TutorialExpandNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mDragDownHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/systemui/TutorialExpandNotification;->flag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 77
    sput-boolean p0, Lcom/android/systemui/TutorialExpandNotification;->flag:Z

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/android/systemui/TutorialExpandNotification;->marginTop:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 77
    sput p0, Lcom/android/systemui/TutorialExpandNotification;->marginTop:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationCloseLayout:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/android/systemui/TutorialExpandNotification;->expandnotifopenHeight:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 77
    sput p0, Lcom/android/systemui/TutorialExpandNotification;->expandnotifopenHeight:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/TutorialExpandNotification;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->helpEnd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/TutorialExpandNotification;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotiCompleteTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationHandler:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpAnimView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/TutorialExpandNotification;)Lcom/android/systemui/TutorialDragDownAnimView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/TutorialExpandNotification;)Lcom/android/systemui/TutorialDragDownAnimView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/TutorialExpandNotification;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialExpandNotification;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification;->mBubbleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private showToast()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    .line 278
    const v4, 0x7f0c01b0

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 279
    .local v1, "invalidToast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    .line 280
    .local v3, "view":Landroid/view/View;
    const/16 v4, 0xf

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 281
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 282
    .local v0, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 283
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 284
    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 285
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 287
    .local v2, "v":Landroid/widget/TextView;
    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 290
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 120
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 121
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 126
    const v1, 0x7f040046

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 130
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    const v1, 0x7f090118

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpAnimView:Landroid/widget/FrameLayout;

    .line 134
    const v1, 0x7f090119

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/TutorialDragDownAnimView;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;

    .line 135
    const v1, 0x7f09011a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/TutorialDragDownAnimView;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;

    .line 137
    const v1, 0x7f090133

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationHandler:Landroid/widget/ImageView;

    .line 139
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mBubbleAnimation:Landroid/view/animation/Animation;

    .line 141
    const v1, 0x7f090129

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mExpandNotification:Landroid/widget/FrameLayout;

    .line 142
    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationTip:Landroid/widget/FrameLayout;

    .line 143
    iget-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationTip:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    const v1, 0x7f090131

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotiCompleteTip:Landroid/widget/FrameLayout;

    .line 145
    const v1, 0x7f090130

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;

    .line 146
    iget-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    const v1, 0x7f09012e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mMsgTail:Landroid/widget/ImageView;

    .line 148
    const v1, 0x7f09012a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;

    .line 149
    iget-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;-><init>(Lcom/android/systemui/TutorialExpandNotification;Lcom/android/systemui/TutorialExpandNotification$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationCloseLayout:Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpenLayout:Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    iget-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mMsgTail:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mMsgTailLayout:Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    iget-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->ArrowLayoutParams1:Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    iget-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->ArrowLayoutParams2:Landroid/widget/FrameLayout$LayoutParams;

    .line 156
    iget-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationTip:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationTipLayout:Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 431
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 408
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 409
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 419
    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 421
    .local v0, "Y":I
    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 422
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 423
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 424
    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification;->mDragDownHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 426
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 413
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 414
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 296
    .local v0, "action":I
    const-string v1, "TOAST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent triggered with action-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-nez v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/TutorialExpandNotification;->showToast()V

    .line 300
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
