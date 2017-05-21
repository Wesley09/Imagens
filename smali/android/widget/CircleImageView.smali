.class public Landroid/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field public static final DEFAULT_BORDER_WIDTH:I = 0x2

.field public static final DEFAULT_RADIUS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RoundedImageView"


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private mBorderWidth:I

.field private mCornerRadius:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOval:Z

.field private mResource:I

.field private mRoundBackground:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "pineapple"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    iput v1, p0, Landroid/widget/CircleImageView;->mCornerRadius:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/CircleImageView;->mBorderWidth:I

    .line 25
    const v0, 0x106000c

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 26
    iput-boolean v1, p0, Landroid/widget/CircleImageView;->mOval:Z

    .line 27
    iput-boolean v1, p0, Landroid/widget/CircleImageView;->mRoundBackground:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "pineapple"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "pineapple"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v4, 0x106000c

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v1, p0, Landroid/widget/CircleImageView;->mCornerRadius:I

    .line 23
    iput v3, p0, Landroid/widget/CircleImageView;->mBorderWidth:I

    .line 25
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 26
    iput-boolean v1, p0, Landroid/widget/CircleImageView;->mOval:Z

    .line 27
    iput-boolean v1, p0, Landroid/widget/CircleImageView;->mRoundBackground:Z

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    iput v1, p0, Landroid/widget/CircleImageView;->mCornerRadius:I

    .line 47
    iput v3, p0, Landroid/widget/CircleImageView;->mBorderWidth:I

    .line 48
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 49
    iput-boolean v2, p0, Landroid/widget/CircleImageView;->mRoundBackground:Z

    .line 50
    iput-boolean v2, p0, Landroid/widget/CircleImageView;->mOval:Z

    .line 51
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateDrawableAttrs()V

    .line 52
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 54
    return-void
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/widget/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 103
    .local v2, "rsrc":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    .line 104
    const/4 v3, 0x0

    .line 117
    :goto_0
    return-object v3

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 109
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroid/widget/CircleImageView;->mResource:I

    if-eqz v3, :cond_1

    .line 111
    :try_start_0
    iget v3, p0, Landroid/widget/CircleImageView;->mResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/widget/CircleDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RoundedImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PPLUnable to find resource: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/widget/CircleImageView;->mResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/CircleImageView;->mResource:I

    goto :goto_1
.end method

.method private updateAttrs(Landroid/graphics/drawable/Drawable;Z)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "background"    # Z

    .prologue
    const/4 v4, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 151
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v3, p1, Landroid/widget/CircleDrawable;

    if-eqz v3, :cond_4

    .line 138
    check-cast p1, Landroid/widget/CircleDrawable;

    .line 139
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/CircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/CircleDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Landroid/widget/CircleDrawable;

    move-result-object v5

    .line 140
    if-eqz p2, :cond_2

    iget-boolean v3, p0, Landroid/widget/CircleImageView;->mRoundBackground:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/widget/CircleDrawable;->setCornerRadius(F)Landroid/widget/CircleDrawable;

    move-result-object v3

    .line 141
    if-eqz p2, :cond_3

    iget-boolean v5, p0, Landroid/widget/CircleImageView;->mRoundBackground:Z

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/CircleDrawable;->setBorderWidth(I)Landroid/widget/CircleDrawable;

    move-result-object v3

    .line 142
    iget-object v4, p0, Landroid/widget/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/CircleDrawable;->setBorderColors(Landroid/content/res/ColorStateList;)Landroid/widget/CircleDrawable;

    move-result-object v3

    .line 143
    iget-boolean v4, p0, Landroid/widget/CircleImageView;->mOval:Z

    invoke-virtual {v3, v4}, Landroid/widget/CircleDrawable;->setOval(Z)Landroid/widget/CircleDrawable;

    goto :goto_0

    .line 140
    :cond_2
    iget v3, p0, Landroid/widget/CircleImageView;->mCornerRadius:I

    goto :goto_1

    .line 141
    :cond_3
    iget v4, p0, Landroid/widget/CircleImageView;->mBorderWidth:I

    goto :goto_2

    .line 144
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 145
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 146
    .local v2, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 147
    .local v1, "layers":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_0

    .line 148
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/widget/CircleImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private updateBackgroundDrawableAttrs()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/CircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/CircleImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    .line 130
    return-void
.end method

.method private updateDrawableAttrs()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Landroid/widget/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/CircleImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    .line 126
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 58
    invoke-virtual {p0}, Landroid/widget/CircleImageView;->invalidate()V

    .line 59
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/widget/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/widget/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Landroid/widget/CircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Landroid/widget/CircleImageView;->mCornerRadius:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/widget/CircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isOval()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Landroid/widget/CircleImageView;->mOval:Z

    return v0
.end method

.method public isRoundBackground()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Landroid/widget/CircleImageView;->mRoundBackground:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/CircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 154
    invoke-static {p1}, Landroid/widget/CircleDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 156
    iget-object v0, p0, Landroid/widget/CircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 193
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CircleImageView;->setBorderColors(Landroid/content/res/ColorStateList;)V

    .line 194
    return-void
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 201
    iget-object v0, p0, Landroid/widget/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_1
    if-eqz p1, :cond_2

    .line 205
    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :goto_1
    iput-object p1, p0, Landroid/widget/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 207
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateDrawableAttrs()V

    .line 208
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 209
    iget v0, p0, Landroid/widget/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/widget/CircleImageView;->invalidate()V

    goto :goto_0

    .line 206
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_2
    const v0, 0x106000c

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 178
    iget v0, p0, Landroid/widget/CircleImageView;->mBorderWidth:I

    if-ne v0, p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    iput p1, p0, Landroid/widget/CircleImageView;->mBorderWidth:I

    .line 183
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateDrawableAttrs()V

    .line 184
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 185
    invoke-virtual {p0}, Landroid/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    .line 164
    iget v0, p0, Landroid/widget/CircleImageView;->mCornerRadius:I

    if-ne v0, p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iput p1, p0, Landroid/widget/CircleImageView;->mCornerRadius:I

    .line 169
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateDrawableAttrs()V

    .line 170
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateBackgroundDrawableAttrs()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/CircleImageView;->mResource:I

    .line 82
    invoke-static {p1}, Landroid/widget/CircleDrawable;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/widget/CircleDrawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateDrawableAttrs()V

    .line 84
    iget-object v0, p0, Landroid/widget/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/CircleImageView;->mResource:I

    .line 75
    invoke-static {p1}, Landroid/widget/CircleDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateDrawableAttrs()V

    .line 77
    iget-object v0, p0, Landroid/widget/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 88
    iget v0, p0, Landroid/widget/CircleImageView;->mResource:I

    if-eq v0, p1, :cond_0

    .line 89
    iput p1, p0, Landroid/widget/CircleImageView;->mResource:I

    .line 90
    invoke-direct {p0}, Landroid/widget/CircleImageView;->resolveResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateDrawableAttrs()V

    .line 92
    iget-object v0, p0, Landroid/widget/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 98
    invoke-virtual {p0}, Landroid/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method

.method public setOval(Z)V
    .locals 0
    .param p1, "oval"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Landroid/widget/CircleImageView;->mOval:Z

    .line 220
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateDrawableAttrs()V

    .line 221
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 222
    invoke-virtual {p0}, Landroid/widget/CircleImageView;->invalidate()V

    .line 223
    return-void
.end method

.method public setRoundBackground(Z)V
    .locals 1
    .param p1, "roundBackground"    # Z

    .prologue
    .line 230
    iget-boolean v0, p0, Landroid/widget/CircleImageView;->mRoundBackground:Z

    if-ne v0, p1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    iput-boolean p1, p0, Landroid/widget/CircleImageView;->mRoundBackground:Z

    .line 235
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 236
    invoke-virtual {p0}, Landroid/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/widget/CircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 67
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateDrawableAttrs()V

    .line 69
    invoke-direct {p0}, Landroid/widget/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 70
    invoke-virtual {p0}, Landroid/widget/CircleImageView;->invalidate()V

    .line 71
    return-void
.end method
