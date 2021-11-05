.class final enum Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;
.super Ljava/lang/Enum;
.source "SecureBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/recoverablekeystore/SecureBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AesGcmOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

.field public static final enum DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

.field public static final enum ENCRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 98
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    const-string v1, "ENCRYPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->ENCRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    .line 99
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    const-string v1, "DECRYPT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    .line 97
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->ENCRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->$VALUES:[Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    const-class v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    return-object v0
.end method

.method public static values()[Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->$VALUES:[Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    invoke-virtual {v0}, [Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    return-object v0
.end method
