.class public Lcom/serajr/blurred/ngeblur$BlurTask;
.super Landroid/os/AsyncTask;
.source "ngeblur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serajr/blurred/ngeblur;
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

.field private static mScreenDimens:[I


# instance fields
.field private mScreenBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static getRealScreenDimensions()[I
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenDimens:[I

    return-object v0
.end method

.method public static setBlurEngine(Lcom/serajr/utils/BlurUtils$BlurEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serajr/utils/BlurUtils$BlurEngine;",
            ")V"
        }
    .end annotation

    .prologue
    .line 320
    sput-object p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mBlurEngine:Lcom/serajr/utils/BlurUtils$BlurEngine;

    return-void
.end method

.method public static setBlurTaskCallback(Lcom/serajr/utils/BlurUtils$BlurTaskCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serajr/utils/BlurUtils$BlurTaskCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    sput-object p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mCallback:Lcom/serajr/utils/BlurUtils$BlurTaskCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 391
    :goto_0
    return-object v0

    .line 359
    :cond_0
    sget-object v0, Lcom/serajr/blurred/ngeblur$BlurTask;->mCallback:Lcom/serajr/utils/BlurUtils$BlurTaskCallback;

    iget-object v2, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Lcom/serajr/utils/DisplayUtils;->getDominantColorByPixelsSampling(Landroid/graphics/Bitmap;II)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/serajr/utils/BlurUtils$BlurTaskCallback;->dominantColor(I)V

    .line 362
    sget-object v0, Lcom/serajr/blurred/ngeblur$BlurTask;->mBlurEngine:Lcom/serajr/utils/BlurUtils$BlurEngine;

    sget-object v2, Lcom/serajr/utils/BlurUtils$BlurEngine;->RenderScriptBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    if-ne v0, v2, :cond_3

    .line 364
    invoke-static {}, Lcom/serajr/utils/Utils;->getAndroidAPILevel()I

    move-result v0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_2

    .line 367
    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurUtils:Lcom/serajr/utils/BlurUtils;
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000002()Lcom/serajr/utils/BlurUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurRadius:I
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000001()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/serajr/utils/BlurUtils;->renderScriptBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 386
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 372
    :cond_2
    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurUtils:Lcom/serajr/utils/BlurUtils;
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000002()Lcom/serajr/utils/BlurUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurRadius:I
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000001()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/serajr/utils/BlurUtils;->stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 386
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 391
    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 376
    :cond_3
    :try_start_1
    sget-object v0, Lcom/serajr/blurred/ngeblur$BlurTask;->mBlurEngine:Lcom/serajr/utils/BlurUtils$BlurEngine;

    sget-object v2, Lcom/serajr/utils/BlurUtils$BlurEngine;->StackBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    if-ne v0, v2, :cond_4

    .line 378
    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurUtils:Lcom/serajr/utils/BlurUtils;
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000002()Lcom/serajr/utils/BlurUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurRadius:I
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000001()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/serajr/utils/BlurUtils;->stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 380
    :cond_4
    sget-object v0, Lcom/serajr/blurred/ngeblur$BlurTask;->mBlurEngine:Lcom/serajr/utils/BlurUtils$BlurEngine;

    sget-object v2, Lcom/serajr/utils/BlurUtils$BlurEngine;->FastBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    if-ne v0, v2, :cond_1

    .line 382
    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurUtils:Lcom/serajr/utils/BlurUtils;
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000002()Lcom/serajr/utils/BlurUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurRadius:I
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000001()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/serajr/utils/BlurUtils;->fastBlur(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/serajr/blurred/ngeblur$BlurTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
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
    .line 399
    if-eqz p1, :cond_0

    .line 406
    sget-object v0, Lcom/serajr/blurred/ngeblur$BlurTask;->mCallback:Lcom/serajr/utils/BlurUtils$BlurTaskCallback;

    invoke-interface {v0, p1}, Lcom/serajr/utils/BlurUtils$BlurTaskCallback;->blurTaskDone(Landroid/graphics/Bitmap;)V

    .line 415
    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/serajr/blurred/ngeblur$BlurTask;->mCallback:Lcom/serajr/utils/BlurUtils$BlurTaskCallback;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/serajr/utils/BlurUtils$BlurTaskCallback;->blurTaskDone(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/serajr/blurred/ngeblur$BlurTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 339
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/serajr/utils/DisplayUtils;->getRealScreenDimensions(Landroid/content/Context;)[I

    move-result-object v1

    sput-object v1, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenDimens:[I

    .line 345
    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurScale:I
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000000()I

    move-result v1

    invoke-static {v0, v1}, Lcom/serajr/utils/DisplayUtils;->takeSurfaceScreenshot(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/serajr/blurred/ngeblur$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
