.class Lcom/android/systemui/BeanBag$Board$1;
.super Ljava/lang/Object;
.source "BeanBag.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BeanBag$Board;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPrint:J

.field final synthetic this$0:Lcom/android/systemui/BeanBag$Board;


# direct methods
.method constructor <init>(Lcom/android/systemui/BeanBag$Board;)V
    .locals 2

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/systemui/BeanBag$Board$1;->this$0:Lcom/android/systemui/BeanBag$Board;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/BeanBag$Board$1;->lastPrint:J

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/BeanBag$Board$1;->this$0:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 311
    iget-object v6, p0, Lcom/android/systemui/BeanBag$Board$1;->this$0:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 312
    .local v4, "v":Landroid/view/View;
    instance-of v6, v4, Lcom/android/systemui/BeanBag$Board$Bean;

    if-nez v6, :cond_1

    .line 310
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 313
    check-cast v2, Lcom/android/systemui/BeanBag$Board$Bean;

    .line 314
    .local v2, "nv":Lcom/android/systemui/BeanBag$Board$Bean;
    long-to-float v6, p4

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/android/systemui/BeanBag$Board$Bean;->update(F)V

    .line 316
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/BeanBag$Board$1;->this$0:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 317
    iget-object v6, p0, Lcom/android/systemui/BeanBag$Board$1;->this$0:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 318
    .local v5, "v2":Landroid/view/View;
    instance-of v6, v5, Lcom/android/systemui/BeanBag$Board$Bean;

    if-nez v6, :cond_2

    .line 316
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object v3, v5

    .line 319
    check-cast v3, Lcom/android/systemui/BeanBag$Board$Bean;

    .line 320
    .local v3, "nv2":Lcom/android/systemui/BeanBag$Board$Bean;
    invoke-virtual {v2, v3}, Lcom/android/systemui/BeanBag$Board$Bean;->overlap(Lcom/android/systemui/BeanBag$Board$Bean;)F

    goto :goto_3

    .line 323
    .end local v3    # "nv2":Lcom/android/systemui/BeanBag$Board$Bean;
    .end local v5    # "v2":Landroid/view/View;
    :cond_3
    iget v6, v2, Lcom/android/systemui/BeanBag$Board$Bean;->a:F

    invoke-virtual {v2, v6}, Landroid/view/View;->setRotation(F)V

    .line 324
    iget v6, v2, Lcom/android/systemui/BeanBag$Board$Bean;->x:F

    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v2, v6}, Landroid/view/View;->setX(F)V

    .line 325
    iget v6, v2, Lcom/android/systemui/BeanBag$Board$Bean;->y:F

    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v2, v6}, Landroid/view/View;->setY(F)V

    .line 327
    iget v6, v2, Lcom/android/systemui/BeanBag$Board$Bean;->x:F

    sget v7, Lcom/android/systemui/BeanBag$Board;->MAX_RADIUS:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, v2, Lcom/android/systemui/BeanBag$Board$Bean;->x:F

    iget-object v7, p0, Lcom/android/systemui/BeanBag$Board$1;->this$0:Lcom/android/systemui/BeanBag$Board;

    # getter for: Lcom/android/systemui/BeanBag$Board;->boardWidth:I
    invoke-static {v7}, Lcom/android/systemui/BeanBag$Board;->access$100(Lcom/android/systemui/BeanBag$Board;)I

    move-result v7

    sget v8, Lcom/android/systemui/BeanBag$Board;->MAX_RADIUS:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v2, Lcom/android/systemui/BeanBag$Board$Bean;->y:F

    sget v7, Lcom/android/systemui/BeanBag$Board;->MAX_RADIUS:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, v2, Lcom/android/systemui/BeanBag$Board$Bean;->y:F

    iget-object v7, p0, Lcom/android/systemui/BeanBag$Board$1;->this$0:Lcom/android/systemui/BeanBag$Board;

    # getter for: Lcom/android/systemui/BeanBag$Board;->boardHeight:I
    invoke-static {v7}, Lcom/android/systemui/BeanBag$Board;->access$000(Lcom/android/systemui/BeanBag$Board;)I

    move-result v7

    sget v8, Lcom/android/systemui/BeanBag$Board;->MAX_RADIUS:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 332
    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/BeanBag$Board$Bean;->reset()V

    goto :goto_1

    .line 337
    .end local v1    # "j":I
    .end local v2    # "nv":Lcom/android/systemui/BeanBag$Board$Bean;
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method
