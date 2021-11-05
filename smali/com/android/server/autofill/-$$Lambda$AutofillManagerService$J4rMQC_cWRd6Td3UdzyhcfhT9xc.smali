.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$J4rMQC_cWRd6Td3UdzyhcfhT9xc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$J4rMQC_cWRd6Td3UdzyhcfhT9xc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$J4rMQC_cWRd6Td3UdzyhcfhT9xc;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$J4rMQC_cWRd6Td3UdzyhcfhT9xc;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$J4rMQC_cWRd6Td3UdzyhcfhT9xc;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$J4rMQC_cWRd6Td3UdzyhcfhT9xc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService;->lambda$destroySessions$2(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method
