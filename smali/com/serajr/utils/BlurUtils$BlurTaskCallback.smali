.class public interface abstract Lcom/serajr/utils/BlurUtils$BlurTaskCallback;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serajr/utils/BlurUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BlurTaskCallback"
.end annotation


# virtual methods
.method public abstract blurTaskDone(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation
.end method

.method public abstract dominantColor(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation
.end method
