.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$AdiObserver;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000000;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000001;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;
    }
.end annotation


# static fields
.field public static BLURRED_FADE_IN_OUT_PREFERENCE_DEFAULT:I = 0x0

.field public static BLURRED_FADE_IN_OUT_PREFERENCE_KEY:Ljava/lang/String; = null

.field public static BLUR_DARK_COLOR_PREFERENCE_DEFAULT:I = 0x0

.field public static BLUR_DARK_COLOR_PREFERENCE_KEY:Ljava/lang/String; = null

.field public static BLUR_LIGHT_COLOR_PREFERENCE_DEFAULT:I = 0x0

.field public static BLUR_LIGHT_COLOR_PREFERENCE_KEY:Ljava/lang/String; = null

.field public static BLUR_MIXED_COLOR_PREFERENCE_DEFAULT:I = 0x0

.field public static BLUR_MIXED_COLOR_PREFERENCE_KEY:Ljava/lang/String; = null

.field public static BLUR_RADIUS_PREFERENCE_DEFAULT:I = 0x0

.field public static BLUR_RADIUS_PREFERENCE_KEY:Ljava/lang/String; = null

.field public static BLUR_SCALE_PREFERENCE_DEFAULT:I = 0x0

.field public static BLUR_SCALE_PREFERENCE_KEY:Ljava/lang/String; = null

.field public static final DEBUG_GESTURES:Z = true

.field public static DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_DEFAULT:Ljava/lang/String; = null

.field public static DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_KEY:Ljava/lang/String; = null

.field public static RECENT_APPS_ENABLED_PREFERENCE_DEFAULT:I = 0x0

.field public static RECENT_APPS_ENABLED_PREFERENCE_KEY:Ljava/lang/String; = null

.field public static STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_DEFAULT:I = 0x0

.field public static STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_KEY:Ljava/lang/String; = null

.field private static final STATUS_BAR_SETTINGS_LEFT_PERCENTAGE:F = 0.8f

.field private static final STATUS_BAR_SETTINGS_RIGHT_PERCENTAGE:F = 0.2f

.field private static final STATUS_BAR_SWIPE_MOVE_PERCENTAGE:F = 0.2f

.field private static final STATUS_BAR_SWIPE_TRIGGER_PERCENTAGE:F = 0.05f

.field private static final STATUS_BAR_SWIPE_VERTICAL_MAX_PERCENTAGE:F = 0.025f

.field public static TRANSLUCENT_HEADER_PREFERENCE_DEFAULT:Z

.field public static TRANSLUCENT_HEADER_PREFERENCE_KEY:Ljava/lang/String;

.field public static TRANSLUCENT_NOTIFICATIONS_PREFERENCE_DEFAULT:Z

.field public static TRANSLUCENT_NOTIFICATIONS_PREFERENCE_KEY:Ljava/lang/String;

.field public static TRANSLUCENT_QUICK_SETTINGS_PREFERENCE_DEFAULT:Z

.field public static TRANSLUCENT_QUICK_SETTINGS_PREFERENCE_KEY:Ljava/lang/String;

.field public static kusus:Landroid/content/Context;

.field public static mBlurDarkColorFilter:I

.field private static mBlurFadeInOut:Z

.field public static mBlurLightColorFilter:I

.field public static mBlurMixedColorFilter:I

.field public static mBlurRadius:I

.field public static mBlurScale:I

.field private static mBlurUtils:Lcom/serajr/utils/BlurUtils;

.field private static mBlurredScreenBitmap:Landroid/graphics/Bitmap;

.field public static mBlurredStatusBarExpandedEnabled:Z

.field public static mBlurredView:Landroid/widget/FrameLayout;

.field private static mColorFilter:Landroid/graphics/ColorFilter;

.field private static final mDummyDirtyRect:Landroid/graphics/Rect;

.field public static mHandleBarAlpha:F

.field private static mInnerBlurredView:Landroid/widget/FrameLayout;

.field public static v:Landroid/widget/FrameLayout;


# instance fields
.field mFingers:I

.field mHandleBar:Landroid/graphics/drawable/Drawable;

.field mHandleBarArea:F

.field mHandleBarHeight:F

.field mHandleView:Landroid/view/View;

.field mOkToFlip:Z

.field mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    const-string v2, "hook_system_ui_blurred_status_bar_expanded_enabled_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_KEY:Ljava/lang/String;

    const/4 v2, 0x1

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_DEFAULT:I

    const-string v2, "hook_system_ui_blurred_recent_app_enabled_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->RECENT_APPS_ENABLED_PREFERENCE_KEY:Ljava/lang/String;

    const/4 v2, 0x1

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->RECENT_APPS_ENABLED_PREFERENCE_DEFAULT:I

    const-string v2, "hook_system_ui_blurred_expanded_panel_scale_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_SCALE_PREFERENCE_KEY:Ljava/lang/String;

    const/16 v2, 0x14

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_SCALE_PREFERENCE_DEFAULT:I

    const-string v2, "hook_system_ui_blurred_expanded_panel_radius_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_RADIUS_PREFERENCE_KEY:Ljava/lang/String;

    const/4 v2, 0x4

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_RADIUS_PREFERENCE_DEFAULT:I

    const-string v2, "hook_system_ui_blurred_expanded_panel_light_color_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_LIGHT_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    const v2, -0xbbbbbc

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_LIGHT_COLOR_PREFERENCE_DEFAULT:I

    const-string v2, "hook_system_ui_blurred_expanded_panel_mixed_color_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_MIXED_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    const v2, -0x777778

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_MIXED_COLOR_PREFERENCE_DEFAULT:I

    const-string v2, "hook_system_ui_blurred_expanded_panel_dark_color_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_DARK_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    const v2, -0x333334

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_DARK_COLOR_PREFERENCE_DEFAULT:I

    const-string v2, "hook_system_ui_translucent_header_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TRANSLUCENT_HEADER_PREFERENCE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TRANSLUCENT_HEADER_PREFERENCE_DEFAULT:Z

    const-string v2, "hook_system_ui_translucent_quick_settings_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TRANSLUCENT_QUICK_SETTINGS_PREFERENCE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TRANSLUCENT_QUICK_SETTINGS_PREFERENCE_DEFAULT:Z

    const-string v2, "hook_system_ui_translucent_notifications_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TRANSLUCENT_NOTIFICATIONS_PREFERENCE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TRANSLUCENT_NOTIFICATIONS_PREFERENCE_DEFAULT:Z

    const-string v2, "hook_system_ui_drag_handle_translucency_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_KEY:Ljava/lang/String;

    const-string v2, "1.0"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_DEFAULT:Ljava/lang/String;

    const-string v2, "hook_system_ui_blurred_fade_in_out_pref"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLURRED_FADE_IN_OUT_PREFERENCE_KEY:Ljava/lang/String;

    const/4 v2, 0x1

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLURRED_FADE_IN_OUT_PREFERENCE_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    sput-object p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->kusus:Landroid/content/Context;

    sput-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->v:Landroid/widget/FrameLayout;

    .line 46
    return-void
.end method

.method static synthetic access$L1000001(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOverrideIconColor:I

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000007()Lcom/serajr/utils/BlurUtils;
    .locals 3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurUtils:Lcom/serajr/utils/BlurUtils;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000009()Landroid/graphics/ColorFilter;
    .locals 3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000011()Landroid/widget/FrameLayout;
    .locals 3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInnerBlurredView:Landroid/widget/FrameLayout;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$S1000001(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOverrideIconColor:I

    return-void
.end method

.method static synthetic access$S1000007(Lcom/serajr/utils/BlurUtils;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurUtils:Lcom/serajr/utils/BlurUtils;

    return-void
.end method

.method static synthetic access$S1000009(Landroid/graphics/ColorFilter;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method static synthetic access$S1000011(Landroid/widget/FrameLayout;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInnerBlurredView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static updatePreferences()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 434
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->kusus:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, v2

    .line 436
    move-object v2, v0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_SCALE_PREFERENCE_KEY:Ljava/lang/String;

    sget v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_SCALE_PREFERENCE_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurScale:I

    .line 437
    move-object v2, v0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_RADIUS_PREFERENCE_KEY:Ljava/lang/String;

    sget v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_RADIUS_PREFERENCE_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurRadius:I

    .line 438
    move-object v2, v0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLURRED_FADE_IN_OUT_PREFERENCE_KEY:Ljava/lang/String;

    sget v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLURRED_FADE_IN_OUT_PREFERENCE_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurFadeInOut:Z

    .line 439
    move-object v2, v0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_KEY:Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_DEFAULT:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarAlpha:F

    .line 440
    move-object v2, v0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_DARK_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    sget v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_DARK_COLOR_PREFERENCE_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurDarkColorFilter:I

    .line 441
    move-object v2, v0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_MIXED_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    sget v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_MIXED_COLOR_PREFERENCE_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurMixedColorFilter:I

    .line 442
    move-object v2, v0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_LIGHT_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    sget v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->BLUR_LIGHT_COLOR_PREFERENCE_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurLightColorFilter:I

    .line 443
    move-object v2, v0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_KEY:Ljava/lang/String;

    sget v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredStatusBarExpandedEnabled:Z

    return-void

    .line 438
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 443
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public createBlurredView()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 448
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v1, v4

    .line 451
    new-instance v4, Lcom/serajr/utils/BlurUtils;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/serajr/utils/BlurUtils;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurUtils:Lcom/serajr/utils/BlurUtils;

    .line 454
    new-instance v4, Landroid/widget/FrameLayout;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    .line 455
    new-instance v4, Landroid/widget/FrameLayout;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInnerBlurredView:Landroid/widget/FrameLayout;

    .line 458
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v2, v4

    .line 461
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInnerBlurredView:Landroid/widget/FrameLayout;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    move-object v4, v0

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 467
    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 470
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    const-string v5, "ready_to_blur"

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 100
    .local v0, "off":I
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .param p1, "vel"    # F
    .param p2, "always"    # Z

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 68
    .local v0, "gr":Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 74
    return-void

    .line 69
    :cond_1
    const-string v1, "closed"

    goto :goto_0
.end method

.method public handleFadeInOut()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 480
    move-object v0, p0

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 499
    :goto_0
    return-void

    .line 484
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v5

    move v1, v5

    .line 485
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    move v2, v5

    .line 488
    const/high16 v5, -0x40800000    # -1.0f

    move v3, v5

    .line 494
    move v5, v2

    const/4 v6, 0x0

    if-le v5, v6, :cond_1

    move v5, v1

    const/4 v6, 0x0

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    move v5, v1

    move v6, v2

    int-to-float v6, v6

    div-float/2addr v5, v6

    :goto_1
    move v3, v5

    .line 499
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    move v6, v3

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    move v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    move v6, v3

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 494
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 499
    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f020150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    .line 58
    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:F

    .line 59
    const v1, 0x7f0e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarArea:F

    .line 60
    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    .line 62
    const v1, 0x7f0c00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->createBlurredView()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 79
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 82
    .local v0, "pl":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 83
    .local v1, "pr":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:F

    float-to-int v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    .end local v0    # "pl":I
    .end local v1    # "pr":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 134
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 111
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    goto :goto_0

    .line 114
    :sswitch_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 116
    .local v2, "miny":F
    move v1, v2

    .line 117
    .local v1, "maxy":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 119
    .local v3, "y":F
    cmpg-float v5, v3, v2

    if-gez v5, :cond_2

    move v2, v3

    .line 120
    :cond_2
    cmpl-float v5, v3, v1

    if-lez v5, :cond_3

    move v1, v3

    .line 117
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    .end local v3    # "y":F
    :cond_4
    sub-float v5, v1, v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarArea:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarArea:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 124
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->switchToSettings()V

    .line 128
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    goto :goto_0

    .line 126
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    goto :goto_2

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public recycle()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 611
    move-object v0, p0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 614
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInnerBlurredView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInnerBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 618
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInnerBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 621
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInnerBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    .line 622
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 624
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 625
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v1, v3

    .line 631
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInnerBlurredView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 636
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 638
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 639
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    sput-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredScreenBitmap:Landroid/graphics/Bitmap;

    .line 644
    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    const-string v4, "ready_to_blur"

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 50
    return-void
.end method

.method public startBlurTask()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000001;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000001;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->setBlurTaskCallback(Lcom/serajr/utils/BlurUtils$BlurTaskCallback;)V

    .line 601
    sget-object v2, Lcom/serajr/utils/BlurUtils$BlurEngine;->RenderScriptBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->setBlurEngine(Lcom/serajr/utils/BlurUtils$BlurEngine;)V

    .line 604
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;-><init>()V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    return-void
.end method
