.class public final synthetic Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/Rollback;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/IntentSender;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;->f$0:Lcom/android/server/rollback/Rollback;

    iput-object p2, p0, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;->f$2:Landroid/content/IntentSender;

    iput-object p4, p0, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;->f$0:Lcom/android/server/rollback/Rollback;

    iget-object v1, p0, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;->f$2:Landroid/content/IntentSender;

    iget-object v3, p0, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;->f$3:Ljava/util/List;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/rollback/Rollback;->lambda$commit$0$Rollback(Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V

    return-void
.end method
