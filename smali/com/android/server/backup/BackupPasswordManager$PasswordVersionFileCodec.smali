.class final Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"

# interfaces
.implements Lcom/android/server/backup/utils/DataStreamCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PasswordVersionFileCodec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/backup/utils/DataStreamCodec<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupPasswordManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/backup/BackupPasswordManager$1;

    .line 264
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInputStream;)Ljava/lang/Integer;
    .locals 1
    .param p1, "dataInputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;->deserialize(Ljava/io/DataInputStream;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Integer;Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "integer"    # Ljava/lang/Integer;
    .param p2, "dataOutputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 270
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;->serialize(Ljava/lang/Integer;Ljava/io/DataOutputStream;)V

    return-void
.end method
