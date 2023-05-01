.class Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;
.super Ljava/lang/Object;
.source "ProgTimeActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$OnSwitchPointChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchPointChanged(I)V
    .registers 7
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$002(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;I)I

    .line 225
    packed-switch p1, :pswitch_data_9c

    .line 262
    :cond_c
    :goto_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 263
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$900(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 265
    :cond_1b
    return-void

    .line 227
    :pswitch_1c
    const-string v0, "47e9ef52-47e9-11e4-8939-164230d1df67"

    .line 228
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 229
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    invoke-virtual {v1, v4}, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->onIndividualHeatChanged(Z)V

    .line 230
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$202(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;I)I

    .line 231
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    goto :goto_c

    .line 238
    :pswitch_64
    const-string v0, "47e9ef53-47e9-11e4-8939-164230d1df67"

    .line 239
    goto :goto_c

    .line 241
    :pswitch_67
    const-string v0, "47e9ef54-47e9-11e4-8939-164230d1df67"

    .line 242
    goto :goto_c

    .line 244
    :pswitch_6a
    const-string v0, "47e9ef55-47e9-11e4-8939-164230d1df67"

    .line 245
    goto :goto_c

    .line 247
    :pswitch_6d
    const-string v0, "47e9ef56-47e9-11e4-8939-164230d1df67"

    .line 248
    goto :goto_c

    .line 250
    :pswitch_70
    const-string v0, "47e9ef57-47e9-11e4-8939-164230d1df67"

    .line 251
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 252
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    invoke-virtual {v1, v4}, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->onIndividualHeatChanged(Z)V

    .line 253
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    invoke-static {v1, v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$702(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;I)I

    .line 254
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->access$800(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 258
    :pswitch_97
    const-string v0, "47e9ef58-47e9-11e4-8939-164230d1df67"

    goto/16 :goto_c

    .line 225
    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_97
    .end packed-switch
.end method
