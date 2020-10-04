.class public final synthetic Lcom/android/server/backup/-$$Lambda$Trampoline$a6uexAeN8zHcMQQ9h_KZ71UQV_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/Trampoline;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/Trampoline;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$Trampoline$a6uexAeN8zHcMQQ9h_KZ71UQV_A;->f$0:Lcom/android/server/backup/Trampoline;

    iput p2, p0, Lcom/android/server/backup/-$$Lambda$Trampoline$a6uexAeN8zHcMQQ9h_KZ71UQV_A;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$Trampoline$a6uexAeN8zHcMQQ9h_KZ71UQV_A;->f$0:Lcom/android/server/backup/Trampoline;

    iget v1, p0, Lcom/android/server/backup/-$$Lambda$Trampoline$a6uexAeN8zHcMQQ9h_KZ71UQV_A;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/Trampoline;->lambda$stopUser$2$Trampoline(I)V

    return-void
.end method
