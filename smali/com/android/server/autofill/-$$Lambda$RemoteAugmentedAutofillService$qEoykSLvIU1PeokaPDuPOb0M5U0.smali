.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$qEoykSLvIU1PeokaPDuPOb0M5U0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$qEoykSLvIU1PeokaPDuPOb0M5U0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$qEoykSLvIU1PeokaPDuPOb0M5U0;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$qEoykSLvIU1PeokaPDuPOb0M5U0;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$qEoykSLvIU1PeokaPDuPOb0M5U0;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$qEoykSLvIU1PeokaPDuPOb0M5U0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->lambda$onDestroyAutofillWindowsRequest$3(Landroid/service/autofill/augmented/IAugmentedAutofillService;)V

    return-void
.end method
