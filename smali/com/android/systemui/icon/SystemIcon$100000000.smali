.class Lcom/android/systemui/icon/SystemIcon$100000000;
.super Ljava/lang/Object;
.source "SystemIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/icon/SystemIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/icon/SystemIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/icon/SystemIcon;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    return-void
.end method

.method static access$0(Lcom/android/systemui/icon/SystemIcon$100000000;)Lcom/android/systemui/icon/SystemIcon;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 19
    move-object/from16 v2, p0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/icon/SystemIcon;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "wow_icon"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    move/from16 v4, v16

    .line 20
    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_0
    move/from16 v16, v5

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/icon/SystemIcon;->getChildCount()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 40
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/icon/SystemIcon;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/icon/SystemIcon;->access$L1000001(Lcom/android/systemui/icon/SystemIcon;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v16

    return-void

    .line 21
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    move-object/from16 v16, v0

    move/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/icon/SystemIcon;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v6, v16

    .line 22
    :try_start_0
    const-string v16, "android.widget.ImageView"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 23
    move-object/from16 v16, v6

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    move-object/from16 v17, v0

    move/from16 v18, v4

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/icon/SystemIcon;->access$1000003(Lcom/android/systemui/icon/SystemIcon;I)I

    move-result v17

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v16 .. v18}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 20
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 22
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    new-instance v16, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v16

    .line 24
    :cond_2
    :try_start_1
    const-string v16, "android.widget.TextView"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 25
    move-object/from16 v16, v6

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    move-object/from16 v17, v0

    move/from16 v18, v4

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/icon/SystemIcon;->access$1000002(Lcom/android/systemui/icon/SystemIcon;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 24
    :catch_1
    move-exception v16

    move-object/from16 v8, v16

    new-instance v16, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v16

    .line 26
    :cond_3
    :try_start_2
    const-string v16, "android.view.ViewGroup"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v16

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 27
    move-object/from16 v16, v6

    check-cast v16, Landroid/view/ViewGroup;

    move-object/from16 v10, v16

    .line 28
    const/16 v16, 0x0

    move/from16 v11, v16

    :goto_2
    move/from16 v16, v11

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 29
    move-object/from16 v16, v10

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v12, v16

    .line 30
    :try_start_3
    const-string v16, "android.widget.ImageView"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v16

    move-object/from16 v17, v12

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 31
    move-object/from16 v16, v12

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    move-object/from16 v17, v0

    move/from16 v18, v4

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/icon/SystemIcon;->access$1000003(Lcom/android/systemui/icon/SystemIcon;I)I

    move-result v17

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v16 .. v18}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    :cond_4
    :try_start_4
    const-string v16, "android.widget.TextView"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v16

    move-object/from16 v17, v12

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 35
    move-object/from16 v16, v12

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/icon/SystemIcon$100000000;->this$0:Lcom/android/systemui/icon/SystemIcon;

    move-object/from16 v17, v0

    move/from16 v18, v4

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/icon/SystemIcon;->access$1000002(Lcom/android/systemui/icon/SystemIcon;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 26
    :catch_2
    move-exception v16

    move-object/from16 v9, v16

    new-instance v16, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v16

    .line 30
    :catch_3
    move-exception v16

    move-object/from16 v13, v16

    new-instance v16, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v16

    .line 34
    :catch_4
    move-exception v16

    move-object/from16 v14, v16

    new-instance v16, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v16
.end method
