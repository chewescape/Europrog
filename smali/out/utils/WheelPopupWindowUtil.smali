.class public Lutils/WheelPopupWindowUtil;
.super Landroid/widget/PopupWindow;
.source "WheelPopupWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutils/WheelPopupWindowUtil$PopupCallBack;
    }
.end annotation


# instance fields
.field private aList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/MyListItem;",
            ">;"
        }
    .end annotation
.end field

.field private aPosition:I

.field protected btn_cancel:Landroid/widget/TextView;

.field protected btn_ok:Landroid/widget/TextView;

.field private cList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/MyListItem;",
            ">;"
        }
    .end annotation
.end field

.field private cPosition:I

.field private context:Landroid/app/Activity;

.field private inflater:Landroid/view/LayoutInflater;

.field private isShowing:Z

.field private mMenuView:Landroid/view/View;

.field private pList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/MyListItem;",
            ">;"
        }
    .end annotation
.end field

.field private pPosition:I

.field private selectTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lutils/WheelPopupWindowUtil;->isShowing:Z

    .line 46
    iput-object p1, p0, Lutils/WheelPopupWindowUtil;->context:Landroid/app/Activity;

    .line 47
    const-string v0, "layout_inflater"

    .line 48
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lutils/WheelPopupWindowUtil;->inflater:Landroid/view/LayoutInflater;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lutils/WheelPopupWindowUtil;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lutils/WheelPopupWindowUtil;

    .prologue
    .line 30
    iget-object v0, p0, Lutils/WheelPopupWindowUtil;->selectTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lutils/WheelPopupWindowUtil;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lutils/WheelPopupWindowUtil;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lutils/WheelPopupWindowUtil;->selectTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lutils/WheelPopupWindowUtil;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lutils/WheelPopupWindowUtil;

    .prologue
    .line 30
    iget-object v0, p0, Lutils/WheelPopupWindowUtil;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lutils/WheelPopupWindowUtil;)Z
    .registers 2
    .param p0, "x0"    # Lutils/WheelPopupWindowUtil;

    .prologue
    .line 30
    iget-boolean v0, p0, Lutils/WheelPopupWindowUtil;->isShowing:Z

    return v0
.end method

.method static synthetic access$300(Lutils/WheelPopupWindowUtil;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lutils/WheelPopupWindowUtil;

    .prologue
    .line 30
    iget-object v0, p0, Lutils/WheelPopupWindowUtil;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 276
    if-eqz p0, :cond_b

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 285
    :cond_b
    :goto_b
    return v2

    .line 279
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 280
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 281
    .local v0, "c":C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_29

    const/16 v3, 0x9

    if-eq v0, v3, :cond_29

    const/16 v3, 0xd

    if-eq v0, v3, :cond_29

    const/16 v3, 0xa

    if-eq v0, v3, :cond_29

    .line 282
    const/4 v2, 0x0

    goto :goto_b

    .line 279
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lutils/WheelPopupWindowUtil;->isShowing:Z

    .line 265
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 266
    return-void
.end method

.method public showDate(Ljava/util/Date;Lutils/WheelPopupWindowUtil$PopupCallBack;)V
    .registers 25
    .param p1, "datetime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lutils/WheelPopupWindowUtil$PopupCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "callBack":Lutils/WheelPopupWindowUtil$PopupCallBack;, "Lutils/WheelPopupWindowUtil$PopupCallBack<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lutils/WheelPopupWindowUtil;->isShowing:Z

    if-eqz v3, :cond_7

    .line 226
    :goto_6
    return-void

    .line 61
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lutils/WheelPopupWindowUtil;->isShowing:Z

    .line 64
    move-object/from16 v19, p1

    .line 65
    .local v19, "date":Ljava/util/Date;
    if-nez p1, :cond_15

    .line 66
    new-instance v19, Ljava/util/Date;

    .end local v19    # "date":Ljava/util/Date;
    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 68
    .restart local v19    # "date":Ljava/util/Date;
    :cond_15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 69
    .local v7, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04003e

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lutils/WheelPopupWindowUtil;->mMenuView:Landroid/view/View;

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->mMenuView:Landroid/view/View;

    const v8, 0x7f0d0102

    .line 73
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/delan/app/germanybluetooth/widget/WheelView;

    .line 74
    .local v4, "wheelView01":Lcom/delan/app/germanybluetooth/widget/WheelView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->mMenuView:Landroid/view/View;

    const v8, 0x7f0d0103

    .line 75
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/delan/app/germanybluetooth/widget/WheelView;

    .line 76
    .local v5, "wheelView02":Lcom/delan/app/germanybluetooth/widget/WheelView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->mMenuView:Landroid/view/View;

    const v8, 0x7f0d0104

    .line 77
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/delan/app/germanybluetooth/widget/WheelView;

    .line 81
    .local v6, "wheelView03":Lcom/delan/app/germanybluetooth/widget/WheelView;
    new-instance v16, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->context:Landroid/app/Activity;

    const/16 v8, 0x7d0

    const/16 v9, 0x833

    const-string v10, "%d"

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v8, v9, v10}, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 83
    .local v16, "adapterYear":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setViewAdapter(Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;)V

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCyclic(Z)V

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit16 v3, v3, -0x7d0

    invoke-virtual {v4, v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCurrentItem(I)V

    .line 88
    new-instance v15, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->context:Landroid/app/Activity;

    const/4 v8, 0x1

    const/16 v9, 0xc

    const-string v10, "%02d"

    invoke-direct {v15, v3, v8, v9, v10}, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 90
    .local v15, "adapterMonth":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    invoke-virtual {v5, v15}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setViewAdapter(Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;)V

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCyclic(Z)V

    .line 92
    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCurrentItem(I)V

    .line 94
    new-instance v14, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->context:Landroid/app/Activity;

    const/4 v8, 0x1

    const/4 v9, 0x5

    .line 95
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v9

    const-string v10, "%02d"

    invoke-direct {v14, v3, v8, v9, v10}, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 96
    .local v14, "adapterDay":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    invoke-virtual {v6, v14}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setViewAdapter(Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;)V

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCyclic(Z)V

    .line 98
    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCurrentItem(I)V

    .line 106
    new-instance v2, Lutils/WheelPopupWindowUtil$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lutils/WheelPopupWindowUtil$1;-><init>(Lutils/WheelPopupWindowUtil;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;Ljava/util/Calendar;)V

    .line 121
    .local v2, "onYearMonthChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    new-instance v21, Lutils/WheelPopupWindowUtil$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v6}, Lutils/WheelPopupWindowUtil$2;-><init>(Lutils/WheelPopupWindowUtil;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    .line 131
    .local v21, "onOtherChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    invoke-virtual {v4, v2}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addChangingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;)V

    .line 132
    invoke-virtual {v5, v2}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addChangingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;)V

    .line 133
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addChangingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->mMenuView:Landroid/view/View;

    const v8, 0x7f0d0105

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 136
    .local v17, "cancelText":Landroid/widget/TextView;
    new-instance v3, Lutils/WheelPopupWindowUtil$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lutils/WheelPopupWindowUtil$3;-><init>(Lutils/WheelPopupWindowUtil;Lutils/WheelPopupWindowUtil$PopupCallBack;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->mMenuView:Landroid/view/View;

    const v8, 0x7f0d0106

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 148
    .local v18, "confirmText":Landroid/widget/TextView;
    new-instance v8, Lutils/WheelPopupWindowUtil$4;

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lutils/WheelPopupWindowUtil$4;-><init>(Lutils/WheelPopupWindowUtil;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;Lutils/WheelPopupWindowUtil$PopupCallBack;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->mMenuView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lutils/WheelPopupWindowUtil;->setContentView(Landroid/view/View;)V

    .line 172
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lutils/WheelPopupWindowUtil;->setWidth(I)V

    .line 173
    const/4 v3, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lutils/WheelPopupWindowUtil;->setHeight(I)V

    .line 174
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lutils/WheelPopupWindowUtil;->setFocusable(Z)V

    .line 175
    const v3, 0x7f0900f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lutils/WheelPopupWindowUtil;->setAnimationStyle(I)V

    .line 176
    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 177
    .local v20, "dw":Landroid/graphics/drawable/ColorDrawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lutils/WheelPopupWindowUtil;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->mMenuView:Landroid/view/View;

    new-instance v8, Lutils/WheelPopupWindowUtil$5;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lutils/WheelPopupWindowUtil$5;-><init>(Lutils/WheelPopupWindowUtil;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lutils/WheelPopupWindowUtil;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v8, 0x51

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9, v10}, Lutils/WheelPopupWindowUtil;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_6
.end method
