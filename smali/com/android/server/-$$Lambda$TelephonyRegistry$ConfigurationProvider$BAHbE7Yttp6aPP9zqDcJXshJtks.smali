.class public final synthetic Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$BAHbE7Yttp6aPP9zqDcJXshJtks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$BAHbE7Yttp6aPP9zqDcJXshJtks;->f$0:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$BAHbE7Yttp6aPP9zqDcJXshJtks;->f$0:I

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->lambda$isRegistrationLimitEnabledInPlatformCompat$1(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
