.class public Lcom/tenten/UpDownBoomPaw;
.super Landroid/widget/LinearLayout;
.source "UpDownBoomPaw.java"


# instance fields
.field MIN_DISTANCE:I

.field c:Landroid/content/Context;

.field downX:F

.field downY:F

.field upX:F

.field upY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const/16 v5, 0x64

    iput v5, v4, Lcom/tenten/UpDownBoomPaw;->MIN_DISTANCE:I

    .line 35
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tenten/UpDownBoomPaw;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 44
    const/4 v7, 0x0

    move v0, v7

    .line 68
    :goto_0
    return v0

    .line 47
    :pswitch_0
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, v7, Lcom/tenten/UpDownBoomPaw;->downX:F

    .line 48
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, v7, Lcom/tenten/UpDownBoomPaw;->downY:F

    .line 49
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 52
    :pswitch_1
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, v7, Lcom/tenten/UpDownBoomPaw;->upX:F

    .line 53
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, v7, Lcom/tenten/UpDownBoomPaw;->upY:F

    .line 54
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, v7, Lcom/tenten/UpDownBoomPaw;->downX:F

    .line 55
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, v7, Lcom/tenten/UpDownBoomPaw;->downY:F

    .line 56
    move-object v7, v0

    iget v7, v7, Lcom/tenten/UpDownBoomPaw;->downY:F

    move-object v8, v0

    iget v8, v8, Lcom/tenten/UpDownBoomPaw;->upY:F

    sub-float/2addr v7, v8

    move v3, v7

    .line 57
    move v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/tenten/UpDownBoomPaw;->MIN_DISTANCE:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 58
    :cond_0
    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 59
    new-instance v7, Landroid/content/Intent;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "boompawnert"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 60
    move-object v7, v0

    iget-object v7, v7, Lcom/tenten/UpDownBoomPaw;->c:Landroid/content/Context;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    new-instance v7, Landroid/content/Intent;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "shitbrix"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 62
    move-object v7, v0

    iget-object v7, v7, Lcom/tenten/UpDownBoomPaw;->c:Landroid/content/Context;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 65
    :cond_1
    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 66
    :cond_2
    new-instance v7, Landroid/content/Intent;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "boompawpaw"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 67
    move-object v7, v0

    iget-object v7, v7, Lcom/tenten/UpDownBoomPaw;->c:Landroid/content/Context;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
