.class public Lcom/tenten/TogglesButton2;
.super Landroid/widget/LinearLayout;
.source "TogglesButton2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenten/TogglesButton2$100000000;
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field mgestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tenten/TogglesButton2;->c:Landroid/content/Context;

    .line 35
    move-object v4, v0

    new-instance v5, Landroid/view/GestureDetector;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/tenten/TogglesButton2;->c:Landroid/content/Context;

    new-instance v8, Lcom/tenten/TogglesButton2$100000000;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/tenten/TogglesButton2$100000000;-><init>(Lcom/tenten/TogglesButton2;)V

    check-cast v8, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, v4, Lcom/tenten/TogglesButton2;->mgestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/TogglesButton2;->mgestureDetector:Landroid/view/GestureDetector;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 47
    const/4 v3, 0x1

    move v0, v3

    return v0
.end method
