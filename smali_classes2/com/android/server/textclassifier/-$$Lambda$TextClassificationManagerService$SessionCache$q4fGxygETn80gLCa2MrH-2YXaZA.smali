.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$SessionCache$q4fGxygETn80gLCa2MrH-2YXaZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

.field public final synthetic f$1:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$SessionCache$q4fGxygETn80gLCa2MrH-2YXaZA;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$SessionCache$q4fGxygETn80gLCa2MrH-2YXaZA;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$SessionCache$q4fGxygETn80gLCa2MrH-2YXaZA;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$SessionCache$q4fGxygETn80gLCa2MrH-2YXaZA;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->lambda$put$0$TextClassificationManagerService$SessionCache(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method
