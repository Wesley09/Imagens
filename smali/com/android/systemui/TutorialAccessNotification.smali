.class public Lcom/android/systemui/TutorialAccessNotification;
.super Landroid/app/Activity;
.source "TutorialAccessNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;,
        Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static HEADER_HEIGHT:I = 0x0

.field private static INTITIAL_BOUND_FOR_DRAG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "STATUSBAR-TutorialAccessNotification"

.field private static flagForDragUp:Z

.field private static flagForInitialDrag:Z

.field private static mLastTouchY:I

.field private static mNotifPanelFirstMove:Z

.field private static mNotifPanelMoveFlag:Z

.field private static mQuickPanelFirstMove:Z

.field private static mQuickPanelMoveFlag:Z


# instance fields
.field firstTimeFlag:Z

.field private h:Landroid/os/Handler;

.field private helpEnd:Ljava/lang/Runnable;

.field private mAccessQuickPanel:Ljava/lang/Runnable;

.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragDownImageLayout:Lcom/android/systemui/TutorialDragDownAnimView;

.field private mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;

.field private mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;

.field private mEnableQuickPanel:Z

.field private mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;

.field private mHelpAccessQuickPanel:Landroid/widget/ImageView;

.field private mHelpNotiCompleteTutorialTip:Landroid/widget/FrameLayout;

.field private mHelpNotifPanelStatusBar:Landroid/widget/Button;

.field private mHelpNotificationHandler:Landroid/widget/ImageView;

.field private mHelpNotificationHandlerGrey:Landroid/widget/ImageView;

.field private mHelpQuickPanelCompleteTip:Landroid/widget/FrameLayout;

.field private mHelpQuickPanelStatusBar:Landroid/widget/Button;

.field private mHelpTutorialLayout:Landroid/widget/FrameLayout;

.field mNotifPanelCloseUpHandler:Landroid/os/Handler;

.field mNotifPanelDragDownCompleteFlag:Z

.field mNotifPanelDragDownHandler:Landroid/os/Handler;

.field mNotifPanelDragUpHandler:Landroid/os/Handler;

.field mNotifPanelFlingHandler:Landroid/os/Handler;

.field private mNotifPanelLayout:Landroid/widget/FrameLayout;

.field private mNotifPanelSpeed:F

.field private mNotifPanelVTracker:Landroid/view/VelocityTracker;

.field private mNotificationTutorialTip:Landroid/widget/FrameLayout;

.field mQuickPanelCloseUpHandler:Landroid/os/Handler;

.field mQuickPanelDragDownCompleteFlag:Z

.field mQuickPanelDragDownHandler:Landroid/os/Handler;

.field mQuickPanelDragUpHandler:Landroid/os/Handler;

.field mQuickPanelFlingHandler:Landroid/os/Handler;

.field private mQuickPanelHelpHandler:Landroid/widget/ImageView;

.field private mQuickPanelHelpHandlerGrey:Landroid/widget/ImageView;

.field private mQuickPanelLayout:Landroid/widget/FrameLayout;

.field private mQuickPanelSpeed:F

.field private mQuickPanelTip:Landroid/widget/FrameLayout;

.field private mQuickPanelVTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    sput-boolean v0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelMoveFlag:Z

    .line 100
    sput-boolean v1, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelFirstMove:Z

    .line 120
    sput-boolean v0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelMoveFlag:Z

    .line 123
    sput-boolean v1, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelFirstMove:Z

    .line 124
    sput-boolean v0, Lcom/android/systemui/TutorialAccessNotification;->flagForInitialDrag:Z

    .line 125
    sput-boolean v0, Lcom/android/systemui/TutorialAccessNotification;->flagForDragUp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    iput v1, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelSpeed:F

    .line 101
    iput-object v2, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->h:Landroid/os/Handler;

    .line 119
    iput v1, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F

    .line 122
    iput-object v2, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;

    .line 502
    new-instance v0, Lcom/android/systemui/TutorialAccessNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialAccessNotification$1;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelDragUpHandler:Landroid/os/Handler;

    .line 533
    new-instance v0, Lcom/android/systemui/TutorialAccessNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialAccessNotification$2;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelFlingHandler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/android/systemui/TutorialAccessNotification$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialAccessNotification$3;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelDragDownHandler:Landroid/os/Handler;

    .line 601
    new-instance v0, Lcom/android/systemui/TutorialAccessNotification$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialAccessNotification$4;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelCloseUpHandler:Landroid/os/Handler;

    .line 630
    new-instance v0, Lcom/android/systemui/TutorialAccessNotification$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialAccessNotification$5;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mAccessQuickPanel:Ljava/lang/Runnable;

    .line 793
    new-instance v0, Lcom/android/systemui/TutorialAccessNotification$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialAccessNotification$6;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelDragUpHandler:Landroid/os/Handler;

    .line 824
    new-instance v0, Lcom/android/systemui/TutorialAccessNotification$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialAccessNotification$7;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelFlingHandler:Landroid/os/Handler;

    .line 860
    new-instance v0, Lcom/android/systemui/TutorialAccessNotification$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialAccessNotification$8;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelDragDownHandler:Landroid/os/Handler;

    .line 894
    new-instance v0, Lcom/android/systemui/TutorialAccessNotification$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialAccessNotification$9;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelCloseUpHandler:Landroid/os/Handler;

    .line 922
    new-instance v0, Lcom/android/systemui/TutorialAccessNotification$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/TutorialAccessNotification$10;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->helpEnd:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout:Lcom/android/systemui/TutorialDragDownAnimView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotificationTutorialTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandlerGrey:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mBubbleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotiCompleteTutorialTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/TutorialAccessNotification;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mAccessQuickPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/TutorialAccessNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/TutorialAccessNotification;->mEnableQuickPanel:Z

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 79
    sput p0, Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/TutorialAccessNotification;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;
    .param p1, "x1"    # Landroid/view/VelocityTracker;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelFirstMove:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 79
    sput-boolean p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelFirstMove:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelMoveFlag:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 79
    sput-boolean p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelMoveFlag:Z

    return p0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/systemui/TutorialAccessNotification;->flagForInitialDrag:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 79
    sput-boolean p0, Lcom/android/systemui/TutorialAccessNotification;->flagForInitialDrag:Z

    return p0
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/systemui/TutorialAccessNotification;->flagForDragUp:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 79
    sput-boolean p0, Lcom/android/systemui/TutorialAccessNotification;->flagForDragUp:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/TutorialAccessNotification;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F

    return v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/TutorialAccessNotification;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;
    .param p1, "x1"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F

    return p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;

    return-object v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 79
    sput p0, Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I

    return p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;

    return-object v0
.end method

.method static synthetic access$3202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 79
    sput p0, Lcom/android/systemui/TutorialAccessNotification;->mLastTouchY:I

    return p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandlerGrey:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpQuickPanelCompleteTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/TutorialAccessNotification;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->helpEnd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelFirstMove:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 79
    sput-boolean p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelFirstMove:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/TutorialAccessNotification;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;
    .param p1, "x1"    # Landroid/view/VelocityTracker;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelMoveFlag:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 79
    sput-boolean p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelMoveFlag:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/TutorialAccessNotification;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelSpeed:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/TutorialAccessNotification;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/TutorialAccessNotification;
    .param p1, "x1"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelSpeed:F

    return p1
.end method

.method private showToast()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    .line 387
    const v4, 0x7f0c01b0

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 388
    .local v1, "invalidToast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    .line 389
    .local v3, "view":Landroid/view/View;
    const/16 v4, 0xf

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 390
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 391
    .local v0, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 392
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 393
    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 394
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 396
    .local v2, "v":Landroid/widget/TextView;
    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 398
    return-void
.end method


# virtual methods
.method public initAccessNotificationPanel()V
    .locals 3

    .prologue
    .line 185
    const v0, 0x7f090106

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotifPanelStatusBar:Landroid/widget/Button;

    .line 186
    const v0, 0x7f090112

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;

    .line 187
    const v0, 0x7f090113

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandlerGrey:Landroid/widget/ImageView;

    .line 188
    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const v0, 0x7f090105

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelLayout:Landroid/widget/FrameLayout;

    .line 192
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotificationTutorialTip:Landroid/widget/FrameLayout;

    .line 193
    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotiCompleteTutorialTip:Landroid/widget/FrameLayout;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotifPanelStatusBar:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;-><init>(Lcom/android/systemui/TutorialAccessNotification;Lcom/android/systemui/TutorialAccessNotification$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    const v0, 0x7f090107

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/TutorialDragDownAnimView;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout:Lcom/android/systemui/TutorialDragDownAnimView;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mEnableQuickPanel:Z

    .line 200
    return-void
.end method

.method public initAccessQuickPanel()V
    .locals 3

    .prologue
    .line 203
    const v0, 0x7f090114

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelLayout:Landroid/widget/FrameLayout;

    .line 204
    const v0, 0x7f090117

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpQuickPanelStatusBar:Landroid/widget/Button;

    .line 206
    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;

    .line 207
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandlerGrey:Landroid/widget/ImageView;

    .line 208
    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelTip:Landroid/widget/FrameLayout;

    .line 212
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpQuickPanelCompleteTip:Landroid/widget/FrameLayout;

    .line 214
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpQuickPanelStatusBar:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;-><init>(Lcom/android/systemui/TutorialAccessNotification;Lcom/android/systemui/TutorialAccessNotification$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    const v0, 0x7f090119

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/TutorialDragDownAnimView;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;

    .line 217
    const v0, 0x7f09011a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/TutorialDragDownAnimView;

    iput-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;

    .line 221
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 645
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 646
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 647
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 154
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 155
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 160
    const v1, 0x7f040043

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 165
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/TutorialAccessNotification;->mBubbleAnimation:Landroid/view/animation/Animation;

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/TutorialAccessNotification;->initAccessNotificationPanel()V

    .line 182
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 936
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 937
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 365
    iget-boolean v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mEnableQuickPanel:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelDragDownCompleteFlag:Z

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotifPanelStatusBar:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandlerGrey:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout:Lcom/android/systemui/TutorialDragDownAnimView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotificationTutorialTip:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/TutorialAccessNotification;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mNotificationTutorialTip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mEnableQuickPanel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelDragDownCompleteFlag:Z

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpQuickPanelCompleteTip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mHelpQuickPanelStatusBar:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandlerGrey:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelTip:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/TutorialAccessNotification;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelTip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 361
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 931
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 932
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 403
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/TutorialAccessNotification;->showToast()V

    .line 406
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
