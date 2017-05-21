.class public interface Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;
.super Ljava/lang/Object;
.source "TouchInterceptionFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/TouchInterceptionFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x209
    name = "TouchInterceptionListener"
.end annotation


# virtual methods
.method public abstract onDownMotionEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMoveMotionEvent(Landroid/view/MotionEvent;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "FF)V"
        }
    .end annotation
.end method

.method public abstract onUpOrCancelMotionEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation
.end method

.method public abstract shouldInterceptTouchEvent(Landroid/view/MotionEvent;ZFF)Z
.end method
