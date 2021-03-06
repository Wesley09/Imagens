.class public Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.super Landroid/widget/FrameLayout;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparator;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;
    }
.end annotation


# static fields
.field private static final ACTION_MINI_MODE:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field private static final CATEGORY_MINI_MODE:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_DRAG:Z = false

.field private static final DRAG_LABEL:Ljava/lang/String; = "MiniAppDragItem"

.field private static final DRAG_TEXT:Ljava/lang/String;

.field private static final ICON_LANDSCAPE_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.landscape.focus"

.field private static final ICON_LANDSCAPE_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.landscape.normal"

.field private static final ICON_PORTRAIT_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.portrait.focus"

.field private static final ICON_PORTRAIT_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.portrait.normal"

.field private static final ICON_PREVIEW_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.preview.normal"

.field private static final LONG_PRESS_TIMEOUT:I = 0xfa

.field private static final MESSAGE_APP_ICON_LONG_PRESS:I = 0x2

.field private static final MESSAGE_APP_PREVIEW_LONG_PRESS:I = 0x3

.field private static final MESSAGE_FOCUS_CHANGED:I = 0x1

.field private static final MILLISECOND_SCROLL_AFTER_CLICK_DELAY:I = 0xc8

.field private static final MILLISECOND_SCROLL_DELAY:I = 0x46

.field private static final MINIMODETRAY_DISABLE_ICON_ALPHA:I = 0x66

.field private static final MINIMODETRAY_DISABLE_TEXT_ALPHA:F = 0.5f

.field private static final MINIMODETRAY_DISABLE_TEXT_COLOR:I = -0x77000001

.field private static final MINIMODETRAY_EDIT_DRAG_APPROVAL_DISTANCE:I = 0x14

.field private static final MINIMODETRAY_ENABLE_ICON_ALPHA:I = 0xff

.field private static final MINIMODETRAY_ENABLE_TEXT_ALPHA:F = 1.0f

.field private static final MINIMODETRAY_FOCUSED_TEXT:I = -0xd74401

.field private static final MINIMODETRAY_TEXT:I = -0x1

.field private static final NUM_HW_TOUCH_SOUND_CHANNELS:I = 0x1

.field private static final PIXEL_SCROLL_MARGIN:I = 0x6

.field public static final PREIVEW_ANIMATION_DURATION:I = 0x190

.field public static final PREIVEW_ANIMATION_START_OFFSET:I = 0x96

.field private static final SUPPORT_DEFAULT_ICON_LIST_ORDER:Z = false

.field private static SUPPORT_MULTIWINDOW:Z = false

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "MiniModeAppsPanel"


# instance fields
.field private isClosePanel:Z

.field private mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundProtector:Landroid/view/View;

.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelButton:Landroid/widget/Button;

.field private mCascadeModeButton:Landroid/widget/LinearLayout;

.field private mChosenApps:[Ljava/lang/String;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mComponentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentDescriptionsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

.field private mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

.field mCurrentDragAppIcon:Landroid/widget/ImageView;

.field private mCurrentDraggingView:Landroid/view/View;

.field private mDoneButton:Landroid/widget/Button;

.field private mDualModeButton:Landroid/widget/LinearLayout;

.field private mEditButton:Landroid/widget/Button;

.field private mEditPanelUIEnabled:Z

.field private mEmptyAppsButton:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpButton:Landroid/widget/LinearLayout;

.field private mIconDpi:I

.field private mIsCascadeMode:Z

.field private mIsScrollDelayed:Z

.field private mIsScrollLeft:Z

.field private mIvt:[B

.field private mLastLocale:Ljava/util/Locale;

.field private mMiniAppBgHeight:I

.field private mMiniAppsBG:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

.field private mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

.field private mMiniAppsScroller:Landroid/view/ViewGroup;

.field private mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

.field private mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field mOnDragging:Z

.field private mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

.field private mOrientation:I

.field private mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

.field mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

.field private mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

.field private mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

.field private mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

.field private mRecentsContainer:Landroid/widget/LinearLayout;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStatusBarHandler:Landroid/os/Handler;

.field private mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

.field private mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

.field private mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

.field private mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

.field private mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWindowManager:Landroid/view/WindowManager;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 643
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 646
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 150
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    .line 154
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-direct {v4, p0, v6, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;II)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    .line 155
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 158
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 160
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    .line 163
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 164
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 165
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 166
    iput v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 169
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 170
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 171
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 172
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 173
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 174
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    .line 176
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 179
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    .line 182
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    .line 185
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    .line 188
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    .line 191
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    .line 194
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    .line 197
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    .line 200
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    .line 203
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    .line 204
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    .line 208
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    .line 209
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    .line 212
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    .line 215
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 218
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    .line 233
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    .line 242
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    .line 243
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    .line 244
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    .line 245
    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    .line 246
    iput v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    .line 250
    const/16 v4, 0x26

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIvt:[B

    .line 500
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 518
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    .line 571
    new-instance v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 648
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 649
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 652
    .local v3, "xlarge":Z
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    .line 655
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 656
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 665
    .local v1, "pkgFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 669
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 671
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SystemVibrator;

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mVibrator:Landroid/os/SystemVibrator;

    .line 673
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 675
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    .line 676
    if-eqz v3, :cond_1

    const/16 v4, 0xa0

    :goto_0
    iput v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    .line 677
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowManager:Landroid/view/WindowManager;

    .line 679
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptionOrder()V

    .line 680
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptions()V

    .line 681
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initMiniModeAppsPanelSound()V

    .line 682
    return-void

    .line 676
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    .line 250
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateImageOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/MiniModeAppsPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->openEditPanel()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->playTrayCloseSound()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/view/DragEvent;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private adjustTrayPadding()V
    .locals 7

    .prologue
    const v6, 0x7f0e0097

    const/4 v5, 0x0

    .line 2046
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v0, v2, v3

    .line 2047
    .local v0, "containerWidth":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 2049
    .local v1, "scrollerWidth":I
    if-ge v0, v1, :cond_0

    .line 2050
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2054
    :goto_0
    return-void

    .line 2052
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private clearItemsAnimation()V
    .locals 4

    .prologue
    .line 1363
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1364
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1365
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1366
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1368
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    const v3, 0x7f090091

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1369
    return-void
.end method

.method private closeEditPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2063
    const-string v0, "MiniModeAppsPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeEditPanel() : mEditPanelUIEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2066
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2067
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2068
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2069
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2070
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2072
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 2074
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2077
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 2078
    return-void
.end method

.method private createPreviewAnimation()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 942
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 946
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f9c28f6    # 1.22f

    const v3, 0x3f99999a    # 1.2f

    const v6, 0x3ee147ae    # 0.44f

    const v8, 0x3f0a3d71    # 0.54f

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 947
    .local v0, "scaleZoom":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 948
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 949
    .local v10, "fadeIn":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 950
    const-wide/16 v1, 0x190

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 951
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 952
    const-wide/16 v1, 0x96

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 953
    return-object v9
.end method

.method private findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1976
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1977
    .local v0, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1982
    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 614
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 617
    .local v0, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initChosenApps()V
    .locals 1

    .prologue
    .line 1986
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanelDataStorage;->load(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 1993
    return-void
.end method

.method private initComponentDescriptionOrder()V
    .locals 7

    .prologue
    .line 603
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    .line 605
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, "mComponentNames":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 609
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initComponentDescriptions()V
    .locals 9

    .prologue
    .line 867
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 868
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 873
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .local v3, "launcherIntent":Landroid/content/Intent;
    const-string v6, "com.samsung.category.MINI_MODE_LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 877
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 878
    .local v5, "r":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 879
    .local v0, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v5, :cond_0

    .line 881
    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .restart local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_2
    if-eqz v0, :cond_0

    .line 890
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 870
    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "launcherIntent":Landroid/content/Intent;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "r":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 882
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "launcherIntent":Landroid/content/Intent;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "r":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 883
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 884
    .restart local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    const-string v6, "MiniModeAppsPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initComponentDescriptions() : exception occurs! while loading mini app (serviceInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 894
    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "r":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method private initGestureDetector()V
    .locals 5

    .prologue
    .line 854
    new-instance v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$10;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 861
    .local v1, "listener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v0, 0x1

    .line 862
    .local v0, "ignoreMultitouch":Z
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 863
    return-void
.end method

.method private initMiniModeAppsPanelSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 898
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v5, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    .line 899
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f070001

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f070002

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    .line 903
    return-void
.end method

.method private isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2102
    :try_start_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 2113
    :cond_0
    :goto_0
    return v2

    .line 2104
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2106
    .local v1, "label":Ljava/lang/String;
    const-string v4, "MiniAppDragItem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 2113
    goto :goto_0

    .line 2109
    .end local v1    # "label":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 2110
    goto :goto_0
.end method

.method private isChosenApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1996
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 2004
    :cond_0
    :goto_0
    return v4

    .line 1999
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2000
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1999
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2004
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isMiinAppsEditPanelShowing()Z
    .locals 1

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 2095
    const/4 v0, 0x0

    .line 2097
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method private openEditPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2082
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2084
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2085
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2086
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2088
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2089
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2091
    :cond_1
    return-void
.end method

.method private playHwTouchSound()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 910
    .local v7, "mRingerMode":I
    packed-switch v7, :pswitch_data_0

    .line 921
    :goto_0
    return-void

    .line 912
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 913
    .local v9, "streamVolume":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 914
    .local v8, "streamMaxVolume":F
    div-float v2, v9, v8

    .line 915
    .local v2, "adjustmentValue":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    aget v1, v1, v4

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 910
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private playTrayCloseSound()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 925
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 928
    .local v7, "mRingerMode":I
    packed-switch v7, :pswitch_data_0

    .line 939
    :goto_0
    return-void

    .line 930
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 931
    .local v9, "streamVolume":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 932
    .local v8, "streamMaxVolume":F
    div-float v2, v9, v8

    .line 933
    .local v2, "adjustmentValue":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private refreshApplicationList()V
    .locals 13

    .prologue
    const v12, 0x7f040028

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 959
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->clearItemsAnimation()V

    .line 961
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 962
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 964
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initChosenApps()V

    .line 966
    const/4 v2, 0x0

    .line 967
    .local v2, "componentDescriptionsSortedByLabel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "componentDescriptionsSortedByLabel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 968
    .restart local v2    # "componentDescriptionsSortedByLabel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    new-instance v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 970
    const/4 v7, 0x0

    .line 971
    .local v7, "view":Landroid/view/View;
    const/4 v5, 0x0

    .line 973
    .local v5, "preview":Landroid/view/View;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 974
    .local v1, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 975
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f04002b

    invoke-static {v8, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 976
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 977
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 978
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    invoke-virtual {v7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 980
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 981
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 982
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isChosenApp(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 983
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 984
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setIconView(Landroid/view/View;)V

    .line 985
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setPreview(Landroid/view/View;)V

    .line 987
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v8

    if-nez v8, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setPreviewAnimation(Landroid/view/animation/AnimationSet;)V

    .line 990
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateLabel()V

    .line 991
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_1

    move v8, v9

    :goto_1
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateResources(Z)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 994
    .end local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_6

    aget-object v6, v0, v3

    .line 996
    .local v6, "str":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    move-result-object v1

    .line 997
    .restart local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v1, :cond_3

    .line 998
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 995
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1003
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v4    # "len$":I
    .end local v6    # "str":Ljava/lang/String;
    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1004
    .restart local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v1, :cond_5

    .line 1005
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1011
    .end local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 1012
    return-void
.end method

.method private save()Z
    .locals 5

    .prologue
    .line 2008
    const/4 v3, 0x0

    .line 2010
    .local v3, "str":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2011
    .local v1, "count":I
    add-int/lit8 v4, v1, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 2013
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2014
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2015
    .local v0, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 2013
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2017
    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :cond_0
    const-string v4, "EOF"

    aput-object v4, v3, v1

    .line 2019
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanelDataStorage;->store(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2023
    const/4 v4, 0x1

    .line 2026
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setCloseIconEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1360
    :cond_0
    return-void
.end method

.method private setEmptyBtnVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2030
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2031
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2033
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2035
    :cond_0
    const/4 v0, 0x1

    .line 2041
    :cond_1
    :goto_0
    return v0

    .line 2037
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 2039
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateImageOfMiniModeAppsPanel()V
    .locals 6

    .prologue
    .line 845
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 846
    .local v0, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateIconInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 849
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MiniModeAppsPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private updateTextOfMiniModeAppsPanel()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 808
    const v5, 0x7f090098

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 809
    .local v2, "editBtn":Landroid/widget/Button;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v5, :cond_0

    .line 810
    const v5, 0x7f0c01b7

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 811
    invoke-virtual {v2, v9, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 814
    :cond_0
    const v5, 0x7f090095

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 815
    .local v4, "emptyBtn":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 816
    const v5, 0x7f0c01b5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 817
    invoke-virtual {v4, v9, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 820
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f09009a

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 821
    .local v3, "editPanelTitle":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 822
    const v5, 0x7f0c01b4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 823
    invoke-virtual {v3, v9, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 826
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 827
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v7, 0x7f0c01b9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 829
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f09009c

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 830
    .local v1, "doneBtn":Landroid/widget/Button;
    if-eqz v1, :cond_4

    .line 831
    const v5, 0x7f0c01b6

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 832
    invoke-virtual {v1, v9, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 835
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f09009b

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 836
    .local v0, "cancelBtn":Landroid/widget/Button;
    if-eqz v0, :cond_5

    .line 837
    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 838
    invoke-virtual {v0, v9, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 840
    :cond_5
    return-void
.end method


# virtual methods
.method public closeMiniAppsPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z

    .line 1347
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 1348
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1351
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    .line 1352
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 1353
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V

    .line 1354
    return-void
.end method

.method public isInContentArea(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 630
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 631
    .local v1, "l":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 632
    .local v2, "r":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 633
    .local v3, "t":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 634
    .local v0, "b":I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 1019
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1020
    .local v1, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1022
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0900a0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1023
    .local v7, "previewIcon":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 1024
    .local v0, "anim":Landroid/view/animation/AnimationSet;
    if-nez v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1028
    :cond_0
    if-eqz v0, :cond_1

    .line 1029
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1032
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1034
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1035
    .local v4, "i":I
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 1036
    .local v8, "previewWidth":I
    mul-int v10, v4, v8

    .line 1037
    .local v10, "xOffsetAtLeft":I
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    sub-int/2addr v11, v8

    div-int/lit8 v2, v11, 0x2

    .line 1038
    .local v2, "centerX":I
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    instance-of v11, v11, Landroid/widget/HorizontalScrollView;

    if-eqz v11, :cond_2

    .line 1039
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    check-cast v11, Landroid/widget/HorizontalScrollView;

    sub-int v12, v10, v2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1041
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1043
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setAlpha(F)V

    .line 1044
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1077
    .end local v0    # "anim":Landroid/view/animation/AnimationSet;
    .end local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v2    # "centerX":I
    .end local v4    # "i":I
    .end local v7    # "previewIcon":Landroid/widget/ImageView;
    .end local v8    # "previewWidth":I
    .end local v10    # "xOffsetAtLeft":I
    :cond_3
    :goto_0
    return-void

    .line 1049
    :cond_4
    if-eqz p1, :cond_3

    .line 1050
    move-object v9, p1

    .line 1051
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1052
    .local v3, "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3100(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1056
    .local v6, "name":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 1057
    .local v5, "intent":Landroid/content/Intent;
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3200(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ServiceInfo;

    if-eqz v11, :cond_7

    .line 1059
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1060
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1069
    :cond_5
    :goto_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    instance-of v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v11, :cond_6

    .line 1070
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    check-cast v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 1074
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v12, 0x425

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1075
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v12, 0x425

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1061
    :cond_7
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3200(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_5

    .line 1063
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1064
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    const/high16 v11, 0x10200000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1066
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 686
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 690
    const v1, 0x7f090092

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    .line 691
    const v1, 0x7f090093

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    .line 692
    const v1, 0x7f090090

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    .line 694
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04002a

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 699
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    iget v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    const/16 v5, 0x7e8

    const v6, 0x800028

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 709
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 710
    const-string v1, "MiniModeAppsEditPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 711
    const v1, 0x7f100027

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 712
    const-string v1, "com.android.systemui"

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 714
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    .line 716
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 717
    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 718
    const v1, 0x7f090098

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 720
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 723
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$4;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    :cond_0
    const v1, 0x7f090095

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 732
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$5;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 742
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 751
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 753
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f09009b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 754
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 765
    const v1, 0x7f090097

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 766
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 779
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 794
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 795
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 797
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 799
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    .line 800
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 802
    new-instance v1, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 803
    new-instance v1, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .line 804
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->setOnFocusChangedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;)V

    .line 805
    return-void

    :cond_2
    move v1, v3

    .line 721
    goto/16 :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x425

    const/4 v4, 0x1

    .line 1080
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1081
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1082
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1083
    .local v0, "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3100(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1087
    .local v1, "name":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v5, v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v6, v6

    invoke-virtual {v3, v1, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->startWithPosition(Landroid/content/ComponentName;II)V

    .line 1088
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 1090
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    instance-of v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v3, :cond_0

    .line 1091
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 1095
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1096
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v3, v4

    .line 1100
    .end local v0    # "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "v":Landroid/view/View;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2058
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2059
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->adjustTrayPadding()V

    .line 2060
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1190
    :cond_0
    :goto_0
    return v8

    .line 1135
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1136
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1137
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1143
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1152
    :cond_1
    if-eqz p1, :cond_0

    .line 1153
    move-object v3, p1

    .line 1154
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f09008e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1156
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 1160
    :pswitch_2
    const/16 v4, 0x66

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1162
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1164
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_0

    .line 1170
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_0

    .line 1171
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1172
    .local v1, "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1175
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3100(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v7, v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 1183
    .end local v1    # "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :pswitch_4
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1185
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_0

    .line 1131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1156
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public openMiniAppsPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1335
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z

    .line 1336
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 1337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1340
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 1342
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 639
    return-void
.end method

.method public setItemsAnimation(Z)V
    .locals 24
    .param p1, "isShowAnim"    # Z

    .prologue
    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    .line 1199
    .local v10, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0096

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1200
    .local v14, "miniAppItemHeight":I
    add-int/lit8 v20, v10, -0x1

    mul-int/lit8 v15, v20, 0x28

    .line 1202
    .local v15, "miniAppItemHideAnimDelay":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0095

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 1203
    .local v16, "miniAppItemWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v18

    .line 1204
    .local v18, "scrollerWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v20

    div-int v19, v20, v16

    .line 1205
    .local v19, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v20

    add-int v20, v20, v18

    div-int v12, v20, v16

    .line 1207
    .local v12, "endPos":I
    if-eqz p1, :cond_3

    .line 1208
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v10, :cond_0

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1210
    .local v9, "child":Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    int-to-float v0, v14

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1212
    .local v17, "rotateItem":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1213
    mul-int/lit8 v20, v13, 0x28

    add-int/lit8 v20, v20, 0x3c

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1214
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1215
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1208
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1217
    .end local v9    # "child":Landroid/view/View;
    .end local v17    # "rotateItem":Landroid/view/animation/TranslateAnimation;
    :cond_0
    const v20, 0x7f090091

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1218
    .local v8, "bg":Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1220
    .local v7, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1221
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1222
    .local v5, "alphaAni":Landroid/view/animation/AlphaAnimation;
    add-int/lit16 v0, v15, 0x14a

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1223
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1224
    .local v6, "aniSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1225
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1226
    invoke-virtual {v8, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1227
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1230
    const v20, 0x7f090094

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1231
    .local v11, "emptyBtnContainer":Landroid/view/View;
    if-eqz v11, :cond_1

    .line 1232
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    invoke-virtual {v11, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1234
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1237
    :cond_1
    new-instance v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1331
    :cond_2
    :goto_1
    return-void

    .line 1266
    .end local v5    # "alphaAni":Landroid/view/animation/AlphaAnimation;
    .end local v6    # "aniSet":Landroid/view/animation/AnimationSet;
    .end local v7    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v8    # "bg":Landroid/view/View;
    .end local v11    # "emptyBtnContainer":Landroid/view/View;
    .end local v13    # "i":I
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    if-ge v13, v10, :cond_4

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1268
    .restart local v9    # "child":Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    int-to-float v0, v14

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1270
    .restart local v17    # "rotateItem":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1271
    sub-int v20, v10, v13

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v20, v20, 0x28

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1272
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1292
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1266
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1294
    .end local v9    # "child":Landroid/view/View;
    .end local v17    # "rotateItem":Landroid/view/animation/TranslateAnimation;
    :cond_4
    const v20, 0x7f090091

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1295
    .restart local v8    # "bg":Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1296
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1297
    .restart local v7    # "animation":Landroid/view/animation/TranslateAnimation;
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1298
    .restart local v5    # "alphaAni":Landroid/view/animation/AlphaAnimation;
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1299
    .restart local v6    # "aniSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1300
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1301
    const-wide/16 v20, 0x10e

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1302
    int-to-long v0, v15

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1304
    new-instance v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1320
    invoke-virtual {v8, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1321
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1324
    const v20, 0x7f090094

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1325
    .restart local v11    # "emptyBtnContainer":Landroid/view/View;
    if-eqz v11, :cond_2

    .line 1326
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    invoke-virtual {v11, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1328
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public setStatusBarHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    .line 1195
    return-void
.end method
