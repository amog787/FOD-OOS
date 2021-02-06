.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$3zX8eFCXMRsa9FCp12VzBp7G-nQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$3zX8eFCXMRsa9FCp12VzBp7G-nQ;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    iput-object p2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$3zX8eFCXMRsa9FCp12VzBp7G-nQ;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$3zX8eFCXMRsa9FCp12VzBp7G-nQ;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$3zX8eFCXMRsa9FCp12VzBp7G-nQ;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    iget-object v1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$3zX8eFCXMRsa9FCp12VzBp7G-nQ;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$3zX8eFCXMRsa9FCp12VzBp7G-nQ;->f$2:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->lambda$onShortcutsAddedOrUpdated$0$DataManager$ShortcutServiceCallback(Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
