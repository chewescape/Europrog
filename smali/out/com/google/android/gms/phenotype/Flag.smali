.class public Lcom/google/android/gms/phenotype/Flag;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/phenotype/Flag$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/phenotype/Flag;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/phenotype/Flag;",
            ">;"
        }
    .end annotation
.end field

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field public static final aAA:Lcom/google/android/gms/phenotype/Flag$zza;


# instance fields
.field final Fe:Ljava/lang/String;

.field final aAw:J

.field final aAx:[B

.field public final aAy:I

.field public final aAz:I

.field final ahI:Z

.field final ahK:D

.field final mVersionCode:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/phenotype/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/phenotype/Flag$zza;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/Flag$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->aAA:Lcom/google/android/gms/phenotype/Flag$zza;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JZDLjava/lang/String;[BII)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/phenotype/Flag;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/phenotype/Flag;->aAw:J

    iput-boolean p5, p0, Lcom/google/android/gms/phenotype/Flag;->ahI:Z

    iput-wide p6, p0, Lcom/google/android/gms/phenotype/Flag;->ahK:D

    iput-object p8, p0, Lcom/google/android/gms/phenotype/Flag;->Fe:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    iput p10, p0, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    iput p11, p0, Lcom/google/android/gms/phenotype/Flag;->aAz:I

    return-void
.end method

.method private static compare(BB)I
    .registers 3

    sub-int v0, p0, p1

    return v0
.end method

.method private static compare(II)I
    .registers 3

    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static compare(JJ)I
    .registers 6

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-nez p0, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    if-nez p1, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method private static compare(ZZ)I
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_3
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/phenotype/Flag;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/Flag;->zza(Lcom/google/android/gms/phenotype/Flag;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_78

    instance-of v2, p1, Lcom/google/android/gms/phenotype/Flag;

    if-eqz v2, :cond_78

    check-cast p1, Lcom/google/android/gms/phenotype/Flag;

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->mVersionCode:I

    iget v3, p1, Lcom/google/android/gms/phenotype/Flag;->mVersionCode:I

    if-ne v2, v3, :cond_26

    iget-object v2, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    iget v3, p1, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    if-ne v2, v3, :cond_26

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->aAz:I

    iget v3, p1, Lcom/google/android/gms/phenotype/Flag;->aAz:I

    if-eq v2, v3, :cond_28

    :cond_26
    move v0, v1

    :cond_27
    :goto_27
    return v0

    :cond_28
    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    packed-switch v2, :pswitch_data_7a

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid enum value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_4a
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->aAw:J

    iget-wide v4, p1, Lcom/google/android/gms/phenotype/Flag;->aAw:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_27

    move v0, v1

    goto :goto_27

    :pswitch_54
    iget-boolean v2, p0, Lcom/google/android/gms/phenotype/Flag;->ahI:Z

    iget-boolean v3, p1, Lcom/google/android/gms/phenotype/Flag;->ahI:Z

    if-eq v2, v3, :cond_27

    move v0, v1

    goto :goto_27

    :pswitch_5c
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->ahK:D

    iget-wide v4, p1, Lcom/google/android/gms/phenotype/Flag;->ahK:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_27

    move v0, v1

    goto :goto_27

    :pswitch_66
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->Fe:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->Fe:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_27

    :pswitch_6f
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_27

    :cond_78
    move v0, v1

    goto :goto_27

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_54
        :pswitch_5c
        :pswitch_66
        :pswitch_6f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/phenotype/Flag;->zza(Ljava/lang/StringBuilder;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/phenotype/zzb;->zza(Lcom/google/android/gms/phenotype/Flag;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/phenotype/Flag;)I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_d

    move v0, v1

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    iget v2, p1, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    invoke-static {v1, v2}, Lcom/google/android/gms/phenotype/Flag;->compare(II)I

    move-result v1

    if-eqz v1, :cond_19

    move v0, v1

    goto :goto_c

    :cond_19
    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    packed-switch v1, :pswitch_data_9c

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid enum value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_3b
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->aAw:J

    iget-wide v2, p1, Lcom/google/android/gms/phenotype/Flag;->aAw:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/phenotype/Flag;->compare(JJ)I

    move-result v0

    goto :goto_c

    :pswitch_44
    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/Flag;->ahI:Z

    iget-boolean v1, p1, Lcom/google/android/gms/phenotype/Flag;->ahI:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/Flag;->compare(ZZ)I

    move-result v0

    goto :goto_c

    :pswitch_4d
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->ahK:D

    iget-wide v2, p1, Lcom/google/android/gms/phenotype/Flag;->ahK:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_c

    :pswitch_56
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->Fe:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->Fe:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/Flag;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    :pswitch_5f
    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    if-nez v1, :cond_6b

    const/4 v0, -0x1

    goto :goto_c

    :cond_6b
    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    if-nez v1, :cond_73

    const/4 v0, 0x1

    goto :goto_c

    :cond_71
    add-int/lit8 v0, v0, 0x1

    :cond_73
    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    array-length v1, v1

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_90

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    aget-byte v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    aget-byte v2, v2, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/phenotype/Flag;->compare(BB)I

    move-result v1

    if-eqz v1, :cond_71

    move v0, v1

    goto/16 :goto_c

    :cond_90
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/Flag;->compare(II)I

    move-result v0

    goto/16 :goto_c

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_44
        :pswitch_4d
        :pswitch_56
        :pswitch_5f
    .end packed-switch
.end method

.method public zza(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 7

    const-string v0, "Flag("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->mVersionCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    packed-switch v0, :pswitch_data_b0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_4f
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->aAw:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_54
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->aAy:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->aAz:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_72
    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/Flag;->ahI:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_54

    :pswitch_78
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->ahK:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_54

    :pswitch_7e
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->Fe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    :pswitch_8e
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    if-nez v0, :cond_98

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    :cond_98
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->aAx:[B

    sget-object v2, Lcom/google/android/gms/phenotype/Flag;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_72
        :pswitch_78
        :pswitch_7e
        :pswitch_8e
    .end packed-switch
.end method
