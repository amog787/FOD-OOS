.class public final synthetic Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$NQQgQ63vxhPkiwOWrnwRyuYSHTM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$NQQgQ63vxhPkiwOWrnwRyuYSHTM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$NQQgQ63vxhPkiwOWrnwRyuYSHTM;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$NQQgQ63vxhPkiwOWrnwRyuYSHTM;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$NQQgQ63vxhPkiwOWrnwRyuYSHTM;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$NQQgQ63vxhPkiwOWrnwRyuYSHTM;

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

    invoke-static {p1, p2}, Lcom/android/server/autofill/FieldClassificationStrategy;->lambda$getAvailableAlgorithms$0(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
