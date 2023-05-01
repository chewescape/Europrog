.class Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;
.super Ljava/lang/Object;
.source "ProgmaticSettingsActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchPointChanged(I)V
    .registers 8
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 127
    packed-switch p1, :pswitch_data_1aa

    .line 185
    :cond_6
    return-void

    .line 129
    :pswitch_7
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 131
    .local v1, "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v3, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 132
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->getCount()I

    move-result v3

    if-ne v3, v5, :cond_11

    .line 133
    invoke-virtual {v1, v4}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->onIndividualHeatChanged(Z)V

    goto :goto_11

    .line 137
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_45
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 138
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 140
    .restart local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v3, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_5b

    .line 145
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_80
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 146
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 148
    .restart local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v3, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_96

    .line 153
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_bb
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 154
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 156
    .restart local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v3, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_d1

    .line 161
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_f6
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 162
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 164
    .restart local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v3, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_10c

    .line 169
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_131
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13b
    :goto_13b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$800(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 171
    .restart local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v3, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 172
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->getCount()I

    move-result v3

    if-ne v3, v5, :cond_13b

    .line 173
    invoke-virtual {v1, v4}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->onIndividualHeatChanged(Z)V

    goto :goto_13b

    .line 177
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_16f
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 178
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_185
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$900(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 180
    .restart local v1    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v3

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v3, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_185

    .line 127
    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_7
        :pswitch_45
        :pswitch_80
        :pswitch_bb
        :pswitch_f6
        :pswitch_131
        :pswitch_16f
    .end packed-switch
.end method
