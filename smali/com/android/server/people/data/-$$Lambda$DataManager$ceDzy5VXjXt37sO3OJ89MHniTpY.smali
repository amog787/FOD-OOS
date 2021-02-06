.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$ceDzy5VXjXt37sO3OJ89MHniTpY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ceDzy5VXjXt37sO3OJ89MHniTpY;->f$0:Lcom/android/server/people/data/DataManager;

    iput p2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ceDzy5VXjXt37sO3OJ89MHniTpY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ceDzy5VXjXt37sO3OJ89MHniTpY;->f$0:Lcom/android/server/people/data/DataManager;

    iget v1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ceDzy5VXjXt37sO3OJ89MHniTpY;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/DataManager;->lambda$onUserUnlocked$0$DataManager(I)V

    return-void
.end method
