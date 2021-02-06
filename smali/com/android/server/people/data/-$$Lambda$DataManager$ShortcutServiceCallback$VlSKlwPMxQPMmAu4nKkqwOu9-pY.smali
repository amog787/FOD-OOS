.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    iput-object p2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;->f$2:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    iget-object v1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;->f$2:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;->f$3:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->lambda$onShortcutsRemoved$1$DataManager$ShortcutServiceCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    return-void
.end method
