.class Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
.super Ljava/lang/Object;
.source "ShortcutBitmapSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutBitmapSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingItem"
.end annotation


# instance fields
.field public final bytes:[B

.field private final mInstantiatedUptimeMillis:J

.field public final shortcut:Landroid/content/pm/ShortcutInfo;


# direct methods
.method private constructor <init>(Landroid/content/pm/ShortcutInfo;[B)V
    .locals 2
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "bytes"    # [B

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->shortcut:Landroid/content/pm/ShortcutInfo;

    .line 96
    iput-object p2, p0, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->bytes:[B

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->mInstantiatedUptimeMillis:J

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;[BLcom/android/server/pm/ShortcutBitmapSaver$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lcom/android/server/pm/ShortcutBitmapSaver$1;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;-><init>(Landroid/content/pm/ShortcutInfo;[B)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingItem{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->mInstantiatedUptimeMillis:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms shortcut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->shortcut:Landroid/content/pm/ShortcutInfo;

    .line 104
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->toInsecureString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method
