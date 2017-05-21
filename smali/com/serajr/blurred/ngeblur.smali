.class public Lcom/serajr/blurred/ngeblur;
.super Ljava/lang/Object;
.source "ngeblur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serajr/blurred/ngeblur$100000000;,
        Lcom/serajr/blurred/ngeblur$BlurTask;
    }
.end annotation


# static fields
.field private static mBlurDarkColorFilter:I

.field private static mBlurFadeInOut:Z

.field private static mBlurLightColorFilter:I

.field private static mBlurMixedColorFilter:I

.field private static mBlurRadius:I

.field private static mBlurScale:I

.field private static mBlurUtils:Lcom/serajr/utils/BlurUtils;

.field private static mBlurredScreenBitmap:Landroid/graphics/Bitmap;

.field public static mBlurredStatusBarExpandedEnabled:Z

.field public static mBlurredView:Landroid/widget/FrameLayout;

.field private static mColorFilter:Landroid/graphics/ColorFilter;

.field public static mHandleBarAlpha:F

.field private static mInnerBlurredView:Landroid/widget/FrameLayout;

.field public static mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# instance fields
.field public BLURRED_FADE_IN_OUT_PREFERENCE_DEFAULT:I

.field public BLURRED_FADE_IN_OUT_PREFERENCE_KEY:Ljava/lang/String;

.field public BLUR_DARK_COLOR_PREFERENCE_DEFAULT:I

.field public BLUR_DARK_COLOR_PREFERENCE_KEY:Ljava/lang/String;

.field public BLUR_LIGHT_COLOR_PREFERENCE_DEFAULT:I

.field public BLUR_LIGHT_COLOR_PREFERENCE_KEY:Ljava/lang/String;

.field public BLUR_MIXED_COLOR_PREFERENCE_DEFAULT:I

.field public BLUR_MIXED_COLOR_PREFERENCE_KEY:Ljava/lang/String;

.field public BLUR_RADIUS_PREFERENCE_DEFAULT:Ljava/lang/String;

.field public BLUR_RADIUS_PREFERENCE_KEY:Ljava/lang/String;

.field public BLUR_SCALE_PREFERENCE_DEFAULT:Ljava/lang/String;

.field public BLUR_SCALE_PREFERENCE_KEY:Ljava/lang/String;

.field public DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_DEFAULT:Ljava/lang/String;

.field public DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_KEY:Ljava/lang/String;

.field public RECENT_APPS_ENABLED_PREFERENCE_DEFAULT:Z

.field public RECENT_APPS_ENABLED_PREFERENCE_KEY:Ljava/lang/String;

.field public STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_DEFAULT:I

.field public STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_KEY:Ljava/lang/String;

.field public TRANSLUCENT_HEADER_PREFERENCE_DEFAULT:Z

.field public TRANSLUCENT_HEADER_PREFERENCE_KEY:Ljava/lang/String;

.field public TRANSLUCENT_NOTIFICATIONS_PREFERENCE_DEFAULT:Z

.field public TRANSLUCENT_NOTIFICATIONS_PREFERENCE_KEY:Ljava/lang/String;

.field public TRANSLUCENT_QUICK_SETTINGS_PREFERENCE_DEFAULT:Z

.field public TRANSLUCENT_QUICK_SETTINGS_PREFERENCE_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "hook_system_ui_blurred_status_bar_expanded_enabled_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_KEY:Ljava/lang/String;

    iput v2, p0, Lcom/serajr/blurred/ngeblur;->STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_DEFAULT:I

    const-string v0, "hook_system_ui_blurred_recent_app_enabled_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->RECENT_APPS_ENABLED_PREFERENCE_KEY:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/serajr/blurred/ngeblur;->RECENT_APPS_ENABLED_PREFERENCE_DEFAULT:Z

    const-string v0, "hook_system_ui_blurred_expanded_panel_scale_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_SCALE_PREFERENCE_KEY:Ljava/lang/String;

    const-string v0, "20"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_SCALE_PREFERENCE_DEFAULT:Ljava/lang/String;

    const-string v0, "hook_system_ui_blurred_expanded_panel_radius_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_RADIUS_PREFERENCE_KEY:Ljava/lang/String;

    const-string v0, "4"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_RADIUS_PREFERENCE_DEFAULT:Ljava/lang/String;

    const-string v0, "hook_system_ui_blurred_expanded_panel_light_color_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_LIGHT_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    const v0, -0xbbbbbc

    iput v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_LIGHT_COLOR_PREFERENCE_DEFAULT:I

    const-string v0, "hook_system_ui_blurred_expanded_panel_mixed_color_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_MIXED_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    const v0, -0x777778

    iput v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_MIXED_COLOR_PREFERENCE_DEFAULT:I

    const-string v0, "hook_system_ui_blurred_expanded_panel_dark_color_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_DARK_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    const v0, -0x333334

    iput v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_DARK_COLOR_PREFERENCE_DEFAULT:I

    const-string v0, "hook_system_ui_translucent_header_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->TRANSLUCENT_HEADER_PREFERENCE_KEY:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/serajr/blurred/ngeblur;->TRANSLUCENT_HEADER_PREFERENCE_DEFAULT:Z

    const-string v0, "hook_system_ui_translucent_quick_settings_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->TRANSLUCENT_QUICK_SETTINGS_PREFERENCE_KEY:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/serajr/blurred/ngeblur;->TRANSLUCENT_QUICK_SETTINGS_PREFERENCE_DEFAULT:Z

    const-string v0, "hook_system_ui_translucent_notifications_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->TRANSLUCENT_NOTIFICATIONS_PREFERENCE_KEY:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/serajr/blurred/ngeblur;->TRANSLUCENT_NOTIFICATIONS_PREFERENCE_DEFAULT:Z

    const-string v0, "hook_system_ui_drag_handle_translucency_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_KEY:Ljava/lang/String;

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_DEFAULT:Ljava/lang/String;

    const-string v0, "hook_system_ui_blurred_fade_in_out_pref"

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLURRED_FADE_IN_OUT_PREFERENCE_KEY:Ljava/lang/String;

    iput v2, p0, Lcom/serajr/blurred/ngeblur;->BLURRED_FADE_IN_OUT_PREFERENCE_DEFAULT:I

    return-void
.end method

.method static synthetic access$L1000000()I
    .locals 1

    sget v0, Lcom/serajr/blurred/ngeblur;->mBlurScale:I

    return v0
.end method

.method static synthetic access$L1000001()I
    .locals 1

    sget v0, Lcom/serajr/blurred/ngeblur;->mBlurRadius:I

    return v0
.end method

.method static synthetic access$L1000002()Lcom/serajr/utils/BlurUtils;
    .locals 1

    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurUtils:Lcom/serajr/utils/BlurUtils;

    return-object v0
.end method

.method static synthetic access$L1000004()Landroid/graphics/ColorFilter;
    .locals 1

    sget-object v0, Lcom/serajr/blurred/ngeblur;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method static synthetic access$L1000005()I
    .locals 1

    sget v0, Lcom/serajr/blurred/ngeblur;->mBlurDarkColorFilter:I

    return v0
.end method

.method static synthetic access$L1000006()I
    .locals 1

    sget v0, Lcom/serajr/blurred/ngeblur;->mBlurMixedColorFilter:I

    return v0
.end method

.method static synthetic access$L1000007()I
    .locals 1

    sget v0, Lcom/serajr/blurred/ngeblur;->mBlurLightColorFilter:I

    return v0
.end method

.method static synthetic access$L1000009()Landroid/widget/FrameLayout;
    .locals 1

    sget-object v0, Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$S1000000(I)V
    .locals 0

    sput p0, Lcom/serajr/blurred/ngeblur;->mBlurScale:I

    return-void
.end method

.method static synthetic access$S1000001(I)V
    .locals 0

    sput p0, Lcom/serajr/blurred/ngeblur;->mBlurRadius:I

    return-void
.end method

.method static synthetic access$S1000002(Lcom/serajr/utils/BlurUtils;)V
    .locals 0

    sput-object p0, Lcom/serajr/blurred/ngeblur;->mBlurUtils:Lcom/serajr/utils/BlurUtils;

    return-void
.end method

.method static synthetic access$S1000004(Landroid/graphics/ColorFilter;)V
    .locals 0

    sput-object p0, Lcom/serajr/blurred/ngeblur;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method static synthetic access$S1000005(I)V
    .locals 0

    sput p0, Lcom/serajr/blurred/ngeblur;->mBlurDarkColorFilter:I

    return-void
.end method

.method static synthetic access$S1000006(I)V
    .locals 0

    sput p0, Lcom/serajr/blurred/ngeblur;->mBlurMixedColorFilter:I

    return-void
.end method

.method static synthetic access$S1000007(I)V
    .locals 0

    sput p0, Lcom/serajr/blurred/ngeblur;->mBlurLightColorFilter:I

    return-void
.end method

.method static synthetic access$S1000009(Landroid/widget/FrameLayout;)V
    .locals 0

    sput-object p0, Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static createBlurredView()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 110
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/serajr/utils/BlurUtils;

    invoke-direct {v1, v0}, Lcom/serajr/utils/BlurUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/serajr/blurred/ngeblur;->mBlurUtils:Lcom/serajr/utils/BlurUtils;

    .line 116
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    .line 117
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;

    .line 120
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 129
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 132
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    const-string v1, "ready_to_blur"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static handleFadeInOut()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 139
    sget-boolean v0, Lcom/serajr/blurred/ngeblur;->mBlurredStatusBarExpandedEnabled:Z

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "error"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMeasuredHeight()I

    move-result v3

    .line 147
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    .line 150
    const/high16 v0, -0x40800000    # -1.0f

    .line 153
    sget-boolean v5, Lcom/serajr/blurred/ngeblur;->mBlurFadeInOut:Z

    if-eqz v5, :cond_2

    .line 156
    if-lez v4, :cond_3

    if-lez v3, :cond_3

    int-to-float v0, v3

    int-to-float v3, v4

    div-float/2addr v0, v3

    .line 161
    :cond_2
    :goto_1
    sget-object v3, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_4

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_4

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 156
    goto :goto_1

    :cond_4
    move v0, v2

    .line 161
    goto :goto_2
.end method

.method public static recycle()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 273
    sget-object v2, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 276
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 287
    check-cast v0, Landroid/graphics/Bitmap;

    .line 293
    :cond_0
    sget-object v2, Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :cond_1
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 300
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    check-cast v1, Landroid/graphics/Bitmap;

    sput-object v1, Lcom/serajr/blurred/ngeblur;->mBlurredScreenBitmap:Landroid/graphics/Bitmap;

    .line 306
    :cond_2
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    const-string v1, "ready_to_blur"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static startBlurTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/serajr/blurred/ngeblur$100000000;

    invoke-direct {v0}, Lcom/serajr/blurred/ngeblur$100000000;-><init>()V

    invoke-static {v0}, Lcom/serajr/blurred/ngeblur$BlurTask;->setBlurTaskCallback(Lcom/serajr/utils/BlurUtils$BlurTaskCallback;)V

    .line 263
    sget-object v0, Lcom/serajr/utils/BlurUtils$BlurEngine;->RenderScriptBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    invoke-static {v0}, Lcom/serajr/blurred/ngeblur$BlurTask;->setBlurEngine(Lcom/serajr/utils/BlurUtils$BlurEngine;)V

    .line 266
    new-instance v0, Lcom/serajr/blurred/ngeblur$BlurTask;

    invoke-direct {v0}, Lcom/serajr/blurred/ngeblur$BlurTask;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/serajr/blurred/ngeblur$BlurTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public updatePreferences()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 86
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 88
    iget-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_SCALE_PREFERENCE_KEY:Ljava/lang/String;

    iget-object v4, p0, Lcom/serajr/blurred/ngeblur;->BLUR_SCALE_PREFERENCE_DEFAULT:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/serajr/blurred/ngeblur;->mBlurScale:I

    .line 89
    iget-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_RADIUS_PREFERENCE_KEY:Ljava/lang/String;

    iget-object v4, p0, Lcom/serajr/blurred/ngeblur;->BLUR_RADIUS_PREFERENCE_DEFAULT:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/serajr/blurred/ngeblur;->mBlurRadius:I

    .line 90
    iget-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLURRED_FADE_IN_OUT_PREFERENCE_KEY:Ljava/lang/String;

    iget v4, p0, Lcom/serajr/blurred/ngeblur;->BLURRED_FADE_IN_OUT_PREFERENCE_DEFAULT:I

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/serajr/blurred/ngeblur;->mBlurFadeInOut:Z

    .line 91
    iget-object v0, p0, Lcom/serajr/blurred/ngeblur;->DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_KEY:Ljava/lang/String;

    iget-object v4, p0, Lcom/serajr/blurred/ngeblur;->DRAG_HANDLE_TRANSLUCENCY_PREFERENCE_DEFAULT:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/serajr/blurred/ngeblur;->mHandleBarAlpha:F

    .line 92
    iget-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_DARK_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    iget v4, p0, Lcom/serajr/blurred/ngeblur;->BLUR_DARK_COLOR_PREFERENCE_DEFAULT:I

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/serajr/blurred/ngeblur;->mBlurDarkColorFilter:I

    .line 93
    iget-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_MIXED_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    iget v4, p0, Lcom/serajr/blurred/ngeblur;->BLUR_MIXED_COLOR_PREFERENCE_DEFAULT:I

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/serajr/blurred/ngeblur;->mBlurMixedColorFilter:I

    .line 94
    iget-object v0, p0, Lcom/serajr/blurred/ngeblur;->BLUR_LIGHT_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    iget v4, p0, Lcom/serajr/blurred/ngeblur;->BLUR_LIGHT_COLOR_PREFERENCE_DEFAULT:I

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/serajr/blurred/ngeblur;->mBlurLightColorFilter:I

    .line 95
    iget-object v0, p0, Lcom/serajr/blurred/ngeblur;->STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_KEY:Ljava/lang/String;

    iget v4, p0, Lcom/serajr/blurred/ngeblur;->STATUS_BAR_EXPANDED_ENABLED_PREFERENCE_DEFAULT:I

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    :goto_1
    sput-boolean v1, Lcom/serajr/blurred/ngeblur;->mBlurredStatusBarExpandedEnabled:Z

    return-void

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_1
.end method
