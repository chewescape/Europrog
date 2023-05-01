.class public Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WeekTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private addEndTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private addEndTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private addEndTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private addEndTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private addStartTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private addStartTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private addStartTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private addStartTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private dayTimeLL:Landroid/widget/LinearLayout;

.field private endTime1TV:Landroid/widget/TextView;

.field private endTime2TV:Landroid/widget/TextView;

.field private endTime3TV:Landroid/widget/TextView;

.field private endTime4TV:Landroid/widget/TextView;

.field onSeekBarChangeListenerEnd1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field onSeekBarChangeListenerEnd2:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field onSeekBarChangeListenerEnd3:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field onSeekBarChangeListenerEnd4:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field onSeekBarChangeListenerStart1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field onSeekBarChangeListenerStart2:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field onSeekBarChangeListenerStart3:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field onSeekBarChangeListenerStart4:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public position:I

.field seekEnd1:Landroid/widget/SeekBar;

.field seekEnd2:Landroid/widget/SeekBar;

.field seekEnd3:Landroid/widget/SeekBar;

.field seekEnd4:Landroid/widget/SeekBar;

.field seekStart1:Landroid/widget/SeekBar;

.field seekStart2:Landroid/widget/SeekBar;

.field seekStart3:Landroid/widget/SeekBar;

.field seekStart4:Landroid/widget/SeekBar;

.field private startTime1TV:Landroid/widget/TextView;

.field private startTime2TV:Landroid/widget/TextView;

.field private startTime3TV:Landroid/widget/TextView;

.field private startTime4TV:Landroid/widget/TextView;

.field private subEndTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private subEndTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private subEndTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private subEndTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private subStartTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private subStartTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private subStartTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field private subStartTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

.field private weekdayTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$17;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$17;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerStart1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 504
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$18;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$18;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerStart2:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 535
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerStart3:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 564
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$20;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$20;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerStart4:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 593
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$21;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$21;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerEnd1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 621
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$22;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$22;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerEnd2:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 649
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$23;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$23;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerEnd3:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 677
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$24;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$24;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerEnd4:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 149
    const v0, 0x7f0d00cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->weekdayTV:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0d00de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->dayTimeLL:Landroid/widget/LinearLayout;

    .line 152
    const v0, 0x7f0d00ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->startTime1TV:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0d00d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->startTime2TV:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0d00df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->startTime3TV:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0d00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->startTime4TV:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0d00d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->endTime1TV:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0d00da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->endTime2TV:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0d00e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->endTime3TV:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0d00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->endTime4TV:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0d00cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subStartTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 163
    const v0, 0x7f0d00d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subStartTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 164
    const v0, 0x7f0d00e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subStartTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 165
    const v0, 0x7f0d00e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subStartTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 167
    const v0, 0x7f0d00d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subEndTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 168
    const v0, 0x7f0d00db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subEndTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 169
    const v0, 0x7f0d00e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subEndTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 170
    const v0, 0x7f0d00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subEndTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 172
    const v0, 0x7f0d00d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart1:Landroid/widget/SeekBar;

    .line 173
    const v0, 0x7f0d00d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart2:Landroid/widget/SeekBar;

    .line 174
    const v0, 0x7f0d00e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    .line 175
    const v0, 0x7f0d00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart4:Landroid/widget/SeekBar;

    .line 177
    const v0, 0x7f0d00d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd1:Landroid/widget/SeekBar;

    .line 178
    const v0, 0x7f0d00dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd2:Landroid/widget/SeekBar;

    .line 179
    const v0, 0x7f0d00e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    .line 180
    const v0, 0x7f0d00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd4:Landroid/widget/SeekBar;

    .line 182
    const v0, 0x7f0d00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addStartTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 183
    const v0, 0x7f0d00d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addStartTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 184
    const v0, 0x7f0d00e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addStartTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 185
    const v0, 0x7f0d00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addStartTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 187
    const v0, 0x7f0d00d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addEndTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 188
    const v0, 0x7f0d00dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addEndTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 189
    const v0, 0x7f0d00e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addEndTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 190
    const v0, 0x7f0d00ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addEndTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 192
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart1:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerStart1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart2:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerStart2:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 194
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerStart3:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 195
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart4:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerStart4:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 196
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd1:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerEnd1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd2:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerEnd2:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 198
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerEnd3:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd4:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->onSeekBarChangeListenerEnd4:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 201
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subStartTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 215
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addStartTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$2;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 237
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subStartTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$3;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 252
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addStartTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$4;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$4;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 274
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subStartTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$5;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$5;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 288
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addStartTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 309
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subStartTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$7;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$7;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 324
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addStartTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$8;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$8;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 346
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subEndTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$9;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$9;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 363
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addEndTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 378
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subEndTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$11;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$11;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 395
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addEndTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$12;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$12;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 410
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subEndTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$13;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$13;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 427
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addEndTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$14;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$14;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 442
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->subEndTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$15;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$15;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 459
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->addEndTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$16;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$16;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 473
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->weekdayTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->startTime1TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->endTime1TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->startTime2TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->endTime2TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->dayTimeLL:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->startTime3TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->startTime4TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->endTime3TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->endTime4TV:Landroid/widget/TextView;

    return-object v0
.end method
