.class public final synthetic Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$vGIL1YGX_9ksoSV74T7gO4fkEBE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$vGIL1YGX_9ksoSV74T7gO4fkEBE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$vGIL1YGX_9ksoSV74T7gO4fkEBE;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$vGIL1YGX_9ksoSV74T7gO4fkEBE;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$vGIL1YGX_9ksoSV74T7gO4fkEBE;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$vGIL1YGX_9ksoSV74T7gO4fkEBE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/autofill/FieldClassificationStrategy;->lambda$getDefaultAlgorithm$1(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
