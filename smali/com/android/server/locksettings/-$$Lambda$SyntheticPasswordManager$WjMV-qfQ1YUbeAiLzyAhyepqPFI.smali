.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;->f$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;->f$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->lambda$initWeaverService$0$SyntheticPasswordManager(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V

    return-void
.end method
