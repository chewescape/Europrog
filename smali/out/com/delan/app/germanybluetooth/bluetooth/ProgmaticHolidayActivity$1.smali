.class Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;
.super Ljava/lang/Object;
.source "ProgmaticHolidayActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$OnHolidaySettingChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHolidaySettingChanged(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_154

    .line 105
    :cond_3
    return-void

    .line 63
    :pswitch_4
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_5
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 64
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 66
    .local v2, "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->clone()Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 70
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_3c
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_3d
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 71
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 73
    .restart local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->clone()Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 77
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_74
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_75
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 78
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 80
    .restart local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->clone()Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 84
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_ac
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_ad
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 85
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 87
    .restart local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->clone()Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 91
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_e4
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_e5
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 92
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 94
    .restart local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->clone()Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    .line 98
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_11c
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_11d
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 99
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 101
    .restart local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->clone()Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_11d

    .line 61
    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3c
        :pswitch_74
        :pswitch_ac
        :pswitch_e4
        :pswitch_11c
    .end packed-switch
.end method
