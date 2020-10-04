.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Tethering$Ou4huZtFpEPgpllOn6YJeTgvhHw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$Ou4huZtFpEPgpllOn6YJeTgvhHw;->f$0:Lcom/android/server/connectivity/Tethering;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$Ou4huZtFpEPgpllOn6YJeTgvhHw;->f$0:Lcom/android/server/connectivity/Tethering;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->lambda$new$3$Tethering(Landroid/content/Intent;)V

    return-void
.end method
