.class public final synthetic Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/UserManagerService$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService$1;ILandroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;->f$0:Lcom/android/server/pm/UserManagerService$1;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;->f$2:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;->f$0:Lcom/android/server/pm/UserManagerService$1;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;->f$2:Landroid/content/IntentSender;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService$1;->lambda$onReceive$0$UserManagerService$1(ILandroid/content/IntentSender;)V

    return-void
.end method
