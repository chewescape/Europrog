.class public final Lcom/google/android/gms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AppDataSearch:[I

.field public static final Corpus:[I

.field public static final Corpus_contentProviderUri:I = 0x2

.field public static final Corpus_corpusId:I = 0x0

.field public static final Corpus_corpusVersion:I = 0x1

.field public static final Corpus_documentMaxAgeSecs:I = 0x6

.field public static final Corpus_perAccountTemplate:I = 0x7

.field public static final Corpus_schemaOrgType:I = 0x4

.field public static final Corpus_semanticallySearchable:I = 0x5

.field public static final Corpus_trimmable:I = 0x3

.field public static final FeatureParam:[I

.field public static final FeatureParam_paramName:I = 0x0

.field public static final FeatureParam_paramValue:I = 0x1

.field public static final GlobalSearch:[I

.field public static final GlobalSearchCorpus:[I

.field public static final GlobalSearchCorpus_allowShortcuts:I = 0x0

.field public static final GlobalSearchSection:[I

.field public static final GlobalSearchSection_sectionContent:I = 0x1

.field public static final GlobalSearchSection_sectionType:I = 0x0

.field public static final GlobalSearch_defaultIntentAction:I = 0x3

.field public static final GlobalSearch_defaultIntentActivity:I = 0x5

.field public static final GlobalSearch_defaultIntentData:I = 0x4

.field public static final GlobalSearch_searchEnabled:I = 0x0

.field public static final GlobalSearch_searchLabel:I = 0x1

.field public static final GlobalSearch_settingsDescription:I = 0x2

.field public static final IMECorpus:[I

.field public static final IMECorpus_inputEnabled:I = 0x0

.field public static final IMECorpus_sourceClass:I = 0x1

.field public static final IMECorpus_toAddressesSection:I = 0x5

.field public static final IMECorpus_userInputSection:I = 0x3

.field public static final IMECorpus_userInputTag:I = 0x2

.field public static final IMECorpus_userInputValue:I = 0x4

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final Section:[I

.field public static final SectionFeature:[I

.field public static final SectionFeature_featureType:I = 0x0

.field public static final Section_indexPrefixes:I = 0x4

.field public static final Section_noIndex:I = 0x2

.field public static final Section_schemaOrgProperty:I = 0x6

.field public static final Section_sectionFormat:I = 0x1

.field public static final Section_sectionId:I = 0x0

.field public static final Section_sectionWeight:I = 0x3

.field public static final Section_subsectionSeparator:I = 0x5

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    new-array v0, v2, [I

    sput-object v0, Lcom/google/android/gms/R$styleable;->AppDataSearch:[I

    .line 158
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/google/android/gms/R$styleable;->Corpus:[I

    .line 167
    new-array v0, v4, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/google/android/gms/R$styleable;->FeatureParam:[I

    .line 170
    new-array v0, v6, [I

    fill-array-data v0, :array_74

    sput-object v0, Lcom/google/android/gms/R$styleable;->GlobalSearch:[I

    .line 171
    new-array v0, v3, [I

    const v1, 0x7f010040

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/R$styleable;->GlobalSearchCorpus:[I

    .line 173
    new-array v0, v4, [I

    fill-array-data v0, :array_84

    sput-object v0, Lcom/google/android/gms/R$styleable;->GlobalSearchSection:[I

    .line 182
    new-array v0, v6, [I

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/google/android/gms/R$styleable;->IMECorpus:[I

    .line 189
    new-array v0, v5, [I

    fill-array-data v0, :array_9c

    sput-object v0, Lcom/google/android/gms/R$styleable;->LoadingImageView:[I

    .line 193
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a6

    sput-object v0, Lcom/google/android/gms/R$styleable;->Section:[I

    .line 194
    new-array v0, v3, [I

    const v1, 0x7f01006a

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/R$styleable;->SectionFeature:[I

    .line 203
    new-array v0, v5, [I

    fill-array-data v0, :array_b8

    sput-object v0, Lcom/google/android/gms/R$styleable;->SignInButton:[I

    return-void

    .line 158
    nop

    :array_58
    .array-data 4
        0x7f010028
        0x7f010029
        0x7f01002a
        0x7f01002b
        0x7f01002c
        0x7f01002d
        0x7f01002e
        0x7f01002f
    .end array-data

    .line 167
    :array_6c
    .array-data 4
        0x7f010038
        0x7f010039
    .end array-data

    .line 170
    :array_74
    .array-data 4
        0x7f01003a
        0x7f01003b
        0x7f01003c
        0x7f01003d
        0x7f01003e
        0x7f01003f
    .end array-data

    .line 173
    :array_84
    .array-data 4
        0x7f010041
        0x7f010042
    .end array-data

    .line 182
    :array_8c
    .array-data 4
        0x7f010043
        0x7f010044
        0x7f010045
        0x7f010046
        0x7f010047
        0x7f010048
    .end array-data

    .line 189
    :array_9c
    .array-data 4
        0x7f01004c
        0x7f01004d
        0x7f01004e
    .end array-data

    .line 193
    :array_a6
    .array-data 4
        0x7f010063
        0x7f010064
        0x7f010065
        0x7f010066
        0x7f010067
        0x7f010068
        0x7f010069
    .end array-data

    .line 203
    :array_b8
    .array-data 4
        0x7f01007b
        0x7f01007c
        0x7f01007d
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
