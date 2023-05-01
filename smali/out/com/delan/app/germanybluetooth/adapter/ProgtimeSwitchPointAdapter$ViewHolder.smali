.class Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ProgtimeSwitchPointAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field private seekEnd1:Landroid/widget/SeekBar;

.field private seekEnd2:Landroid/widget/SeekBar;

.field private seekEnd3:Landroid/widget/SeekBar;

.field private seekEnd4:Landroid/widget/SeekBar;

.field private seekStart1:Landroid/widget/SeekBar;

.field private seekStart2:Landroid/widget/SeekBar;

.field private seekStart3:Landroid/widget/SeekBar;

.field private seekStart4:Landroid/widget/SeekBar;

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

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

.field private weekdayTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;Landroid/view/View;)V
    .registers 5
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$17;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$17;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerStart1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 610
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerStart2:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 643
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$19;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$19;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerStart3:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 676
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$20;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$20;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerStart4:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 709
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$21;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$21;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerEnd1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 737
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$22;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$22;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerEnd2:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 765
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$23;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$23;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerEnd3:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 793
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$24;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$24;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerEnd4:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 172
    const v0, 0x7f0d00cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->weekdayTV:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0d00de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->dayTimeLL:Landroid/widget/LinearLayout;

    .line 175
    const v0, 0x7f0d00ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->startTime1TV:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0d00d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->startTime2TV:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0d00df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->startTime3TV:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0d00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->startTime4TV:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0d00d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->endTime1TV:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0d00da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->endTime2TV:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0d00e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->endTime3TV:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0d00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->endTime4TV:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0d00cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subStartTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 186
    const v0, 0x7f0d00d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subStartTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 187
    const v0, 0x7f0d00e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subStartTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 188
    const v0, 0x7f0d00e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subStartTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 190
    const v0, 0x7f0d00d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subEndTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 191
    const v0, 0x7f0d00db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subEndTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 192
    const v0, 0x7f0d00e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subEndTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 193
    const v0, 0x7f0d00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subEndTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 195
    const v0, 0x7f0d00d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart1:Landroid/widget/SeekBar;

    .line 196
    const v0, 0x7f0d00d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart2:Landroid/widget/SeekBar;

    .line 197
    const v0, 0x7f0d00e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    .line 198
    const v0, 0x7f0d00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart4:Landroid/widget/SeekBar;

    .line 200
    const v0, 0x7f0d00d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd1:Landroid/widget/SeekBar;

    .line 201
    const v0, 0x7f0d00dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd2:Landroid/widget/SeekBar;

    .line 202
    const v0, 0x7f0d00e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    .line 203
    const v0, 0x7f0d00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd4:Landroid/widget/SeekBar;

    .line 205
    const v0, 0x7f0d00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addStartTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 206
    const v0, 0x7f0d00d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addStartTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 207
    const v0, 0x7f0d00e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addStartTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 208
    const v0, 0x7f0d00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addStartTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 210
    const v0, 0x7f0d00d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addEndTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 211
    const v0, 0x7f0d00dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addEndTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 212
    const v0, 0x7f0d00e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addEndTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 213
    const v0, 0x7f0d00ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addEndTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .line 215
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart1:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerStart1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 216
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart2:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerStart2:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 217
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerStart3:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 218
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart4:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerStart4:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 219
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd1:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerEnd1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 220
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd2:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerEnd2:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 221
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerEnd3:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 222
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd4:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->onSeekBarChangeListenerEnd4:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 224
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subStartTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 244
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subStartTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$2;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 263
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subStartTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$3;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 283
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subStartTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$4;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$4;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 303
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subEndTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$5;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$5;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 322
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subEndTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$6;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$6;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 342
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subEndTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$7;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$7;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 362
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->subEndTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$8;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$8;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 382
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addStartTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$9;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$9;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 410
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addStartTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$10;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$10;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 438
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addStartTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$11;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$11;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 465
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addStartTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$12;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$12;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 493
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addEndTV1:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$13;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$13;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 513
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addEndTV2:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$14;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$14;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 533
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addEndTV3:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$15;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$15;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 553
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->addEndTV4:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$16;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$16;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V

    .line 572
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->weekdayTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart1:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->startTime3TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->endTime3TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart4:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->startTime4TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd4:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->endTime4TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->startTime1TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd1:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->endTime1TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekStart2:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->startTime2TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->seekEnd2:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->endTime2TV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->dayTimeLL:Landroid/widget/LinearLayout;

    return-object v0
.end method
