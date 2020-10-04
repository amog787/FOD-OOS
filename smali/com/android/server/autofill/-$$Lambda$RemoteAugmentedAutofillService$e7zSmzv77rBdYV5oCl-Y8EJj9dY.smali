.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$e7zSmzv77rBdYV5oCl-Y8EJj9dY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$e7zSmzv77rBdYV5oCl-Y8EJj9dY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$e7zSmzv77rBdYV5oCl-Y8EJj9dY;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$e7zSmzv77rBdYV5oCl-Y8EJj9dY;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$e7zSmzv77rBdYV5oCl-Y8EJj9dY;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$e7zSmzv77rBdYV5oCl-Y8EJj9dY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->lambda$onDestroyAutofillWindowsRequest$0(Landroid/service/autofill/augmented/IAugmentedAutofillService;)V

    return-void
.end method
