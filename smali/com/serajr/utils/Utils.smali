.class public Lcom/serajr/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllChildrenViews(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v7, v0

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-nez v7, :cond_0

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 30
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 32
    move-object v7, v1

    move-object v0, v7

    .line 51
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 38
    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    move-object v2, v7

    .line 39
    const/4 v7, 0x0

    move v3, v7

    :goto_1
    move v7, v3

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 51
    move-object v7, v1

    move-object v0, v7

    goto :goto_0

    .line 41
    :cond_1
    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v7

    .line 44
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 45
    move-object v7, v5

    move-object v8, v4

    invoke-static {v8}, Lcom/serajr/utils/Utils;->getAllChildrenViews(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 47
    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getAndroidAPILevel()I
    .locals 3

    .prologue
    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v2

    return v0
.end method

.method public static isSonyXperiaRom()Z
    .locals 6

    .prologue
    .line 13
    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "/system/framework/SemcGenericUxpRes.apk"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 14
    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    move v0, v2

    return v0
.end method
