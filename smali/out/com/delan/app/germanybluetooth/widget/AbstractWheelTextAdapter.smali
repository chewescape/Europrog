.class public abstract Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;
.super Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;
.source "AbstractWheelTextAdapter.java"


# static fields
.field private static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field public static final DEFAULT_TEXT_SIZE:I = 0x19

.field public static final LABEL_COLOR:I = -0x8fff90

.field protected static final NO_RESOURCE:I = 0x0

.field private static final TEXT_VIEW_ITEM_RESOURCE:I = -0x1


# instance fields
.field protected context:Landroid/content/Context;

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemResourceId:I

.field protected itemTextResourceId:I

.field private textColor:I

.field private textSize:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemResource"    # I

    .prologue
    .line 76
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemResource"    # I
    .param p3, "itemTextResource"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;-><init>()V

    .line 47
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->textColor:I

    .line 48
    const/16 v0, 0x19

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->textSize:I

    .line 86
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    .line 87
    iput p2, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->itemResourceId:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->itemTextResourceId:I

    .line 90
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 91
    return-void
.end method

.method private getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "textResource"    # I

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 238
    .local v2, "text":Landroid/widget/TextView;
    if-nez p2, :cond_c

    :try_start_3
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_c

    .line 239
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 249
    :cond_b
    :goto_b
    return-object v2

    .line 240
    :cond_c
    if-eqz p2, :cond_b

    .line 241
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_14} :catch_15

    .restart local v2    # "text":Landroid/widget/TextView;
    goto :goto_b

    .line 243
    .end local v2    # "text":Landroid/widget/TextView;
    :catch_15
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "AbstractWheelAdapter"

    const-string v4, "You must supply a resource ID for a TextView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "resource"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 258
    packed-switch p1, :pswitch_data_16

    .line 264
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    .line 260
    :pswitch_b
    const/4 v0, 0x0

    goto :goto_a

    .line 262
    :pswitch_d
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 258
    nop

    :pswitch_data_16
    .packed-switch -0x1
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 221
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->textColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 223
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 227
    return-void
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 206
    if-nez p1, :cond_8

    .line 207
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->emptyItemResourceId:I

    invoke-direct {p0, v0, p2}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 209
    :cond_8
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->emptyItemResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 210
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    .line 213
    :cond_17
    return-object p1
.end method

.method public getEmptyItemResource()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "index"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 183
    if-ltz p1, :cond_2d

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->getItemsCount()I

    move-result v2

    if-ge p1, v2, :cond_2d

    .line 184
    if-nez p2, :cond_10

    .line 185
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->itemResourceId:I

    invoke-direct {p0, v2, p3}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 187
    :cond_10
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-direct {p0, p2, v2}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    .line 188
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_2b

    .line 189
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 190
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_20

    .line 191
    const-string v0, ""

    .line 193
    :cond_20
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->itemResourceId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b

    .line 196
    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_2b
    move-object v2, p2

    .line 201
    .end local v1    # "textView":Landroid/widget/TextView;
    :goto_2c
    return-object v2

    :cond_2d
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method public getItemResource()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->itemResourceId:I

    return v0
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->itemTextResourceId:I

    return v0
.end method

.method public getTextColor()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->textSize:I

    return v0
.end method

.method public setEmptyItemResource(I)V
    .registers 2
    .param p1, "emptyItemResourceId"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->emptyItemResourceId:I

    .line 171
    return-void
.end method

.method public setItemResource(I)V
    .registers 2
    .param p1, "itemResourceId"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->itemResourceId:I

    .line 139
    return-void
.end method

.method public setItemTextResource(I)V
    .registers 2
    .param p1, "itemTextResourceId"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->itemTextResourceId:I

    .line 155
    return-void
.end method

.method public setTextColor(I)V
    .registers 2
    .param p1, "textColor"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->textColor:I

    .line 107
    return-void
.end method

.method public setTextSize(I)V
    .registers 2
    .param p1, "textSize"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;->textSize:I

    .line 123
    return-void
.end method
