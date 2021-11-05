.class public final synthetic Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$A5xhR3lZDw53BlzyFNt_k-u3iFQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$A5xhR3lZDw53BlzyFNt_k-u3iFQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$A5xhR3lZDw53BlzyFNt_k-u3iFQ;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$A5xhR3lZDw53BlzyFNt_k-u3iFQ;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$A5xhR3lZDw53BlzyFNt_k-u3iFQ;->INSTANCE:Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$A5xhR3lZDw53BlzyFNt_k-u3iFQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->lambda$getRegistrationLimit$0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
