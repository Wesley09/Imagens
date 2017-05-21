.class Landroid/support/v21/LayoutLinear$100000000;
.super Ljava/lang/Object;
.source "LayoutLinear.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/LayoutLinear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/LayoutLinear;


# direct methods
.method constructor <init>(Landroid/support/v21/LayoutLinear;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/LayoutLinear$100000000;->this$0:Landroid/support/v21/LayoutLinear;

    return-void
.end method

.method static access$0(Landroid/support/v21/LayoutLinear$100000000;)Landroid/support/v21/LayoutLinear;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/LayoutLinear$100000000;->this$0:Landroid/support/v21/LayoutLinear;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/LayoutLinear$100000000;->this$0:Landroid/support/v21/LayoutLinear;

    invoke-virtual {v6}, Landroid/support/v21/LayoutLinear;->getChildCount()I

    move-result v6

    move v2, v6

    .line 222
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/LayoutLinear$100000000;->this$0:Landroid/support/v21/LayoutLinear;

    invoke-virtual {v6}, Landroid/support/v21/LayoutLinear;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    move v3, v6

    .line 223
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_0
    move v6, v4

    const/4 v7, 0x0

    if-ge v6, v7, :cond_0

    return-void

    .line 224
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/LayoutLinear$100000000;->this$0:Landroid/support/v21/LayoutLinear;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v21/LayoutLinear;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move v7, v3

    move v8, v4

    int-to-float v8, v8

    add-float/2addr v7, v8

    neg-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 223
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method
