.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;
.super Landroid/os/AsyncTask;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "BlurTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static mBlurEngine:Lcom/serajr/utils/BlurUtils$BlurEngine;

.field private static mCallback:Lcom/serajr/utils/BlurUtils$BlurTaskCallback;

.field private static mScreenBitmap:Landroid/graphics/Bitmap;

.field private static mScreenDimens:[I


# instance fields
.field np:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 757
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static getRealScreenDimensions()[I
    .locals 3

    .prologue
    .line 669
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenDimens:[I

    move-object v0, v2

    return-object v0
.end method

.method public static setBlurEngine(Lcom/serajr/utils/BlurUtils$BlurEngine;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serajr/utils/BlurUtils$BlurEngine;",
            ")V"
        }
    .end annotation

    .prologue
    .line 657
    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mBlurEngine:Lcom/serajr/utils/BlurUtils$BlurEngine;

    return-void
.end method

.method public static setBlurTaskCallback(Lcom/serajr/utils/BlurUtils$BlurTaskCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serajr/utils/BlurUtils$BlurTaskCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 663
    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mCallback:Lcom/serajr/utils/BlurUtils$BlurTaskCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 694
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 695
    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    .line 730
    :goto_0
    return-object v0

    .line 698
    :cond_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mCallback:Lcom/serajr/utils/BlurUtils$BlurTaskCallback;

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-static {v5, v6, v7}, Lcom/serajr/utils/DisplayUtils;->getDominantColorByPixelsSampling(Landroid/graphics/Bitmap;II)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/serajr/utils/BlurUtils$BlurTaskCallback;->dominantColor(I)V

    .line 701
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mBlurEngine:Lcom/serajr/utils/BlurUtils$BlurEngine;

    sget-object v5, Lcom/serajr/utils/BlurUtils$BlurEngine;->RenderScriptBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    if-ne v4, v5, :cond_3

    .line 703
    invoke-static {}, Lcom/serajr/utils/Utils;->getAndroidAPILevel()I

    move-result v4

    const/16 v5, 0x11

    if-lt v4, v5, :cond_2

    .line 706
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$L1000007()Lcom/serajr/utils/BlurUtils;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurRadius:I

    invoke-virtual {v4, v5, v6}, Lcom/serajr/utils/BlurUtils;->renderScriptBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 725
    :cond_1
    :goto_1
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    move-object v0, v4

    goto :goto_0

    .line 711
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$L1000007()Lcom/serajr/utils/BlurUtils;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurRadius:I

    invoke-virtual {v4, v5, v6}, Lcom/serajr/utils/BlurUtils;->stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 725
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 730
    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    goto :goto_0

    .line 715
    :cond_3
    :try_start_1
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mBlurEngine:Lcom/serajr/utils/BlurUtils$BlurEngine;

    sget-object v5, Lcom/serajr/utils/BlurUtils$BlurEngine;->StackBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    if-ne v4, v5, :cond_4

    .line 717
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$L1000007()Lcom/serajr/utils/BlurUtils;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurRadius:I

    invoke-virtual {v4, v5, v6}, Lcom/serajr/utils/BlurUtils;->stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 719
    :cond_4
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mBlurEngine:Lcom/serajr/utils/BlurUtils$BlurEngine;

    sget-object v5, Lcom/serajr/utils/BlurUtils$BlurEngine;->FastBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    if-ne v4, v5, :cond_1

    .line 721
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$L1000007()Lcom/serajr/utils/BlurUtils;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurRadius:I

    invoke-virtual {v4, v5, v6}, Lcom/serajr/utils/BlurUtils;->fastBlur(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 738
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 745
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mCallback:Lcom/serajr/utils/BlurUtils$BlurTaskCallback;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/serajr/utils/BlurUtils$BlurTaskCallback;->blurTaskDone(Landroid/graphics/Bitmap;)V

    .line 754
    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mCallback:Lcom/serajr/utils/BlurUtils$BlurTaskCallback;

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-interface {v3, v4}, Lcom/serajr/utils/BlurUtils$BlurTaskCallback;->blurTaskDone(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 676
    move-object v0, p0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePreferences()V

    .line 677
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->kusus:Landroid/content/Context;

    move-object v1, v3

    .line 680
    move-object v3, v1

    invoke-static {v3}, Lcom/serajr/utils/DisplayUtils;->getRealScreenDimensions(Landroid/content/Context;)[I

    move-result-object v3

    sput-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenDimens:[I

    .line 684
    move-object v3, v1

    sget v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurScale:I

    invoke-static {v3, v4}, Lcom/serajr/utils/DisplayUtils;->takeSurfaceScreenshot(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
