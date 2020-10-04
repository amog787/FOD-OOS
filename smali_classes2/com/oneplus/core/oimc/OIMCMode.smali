.class public Lcom/oneplus/core/oimc/OIMCMode;
.super Ljava/lang/Object;
.source "OIMCMode.java"


# static fields
.field public static final CAR_MODE:Ljava/lang/String; = "CarMode"

.field public static final COLOR_READ_MODE:Ljava/lang/String; = "ColorReadMode"

.field public static final FINGERPRINT_MODE:Ljava/lang/String; = "FingerPrintMode"

.field public static final GAME_MODE:Ljava/lang/String; = "GameMode"

.field public static final GOOGLE_MATRIX_MODE:Ljava/lang/String; = "GoogleMatrixMode"

.field public static final MODES:[Ljava/lang/String;

.field public static final MODE_ENTER:I = 0x1

.field public static final MODE_EXIT:I = 0x2

.field public static final NIGHT_MODE:Ljava/lang/String; = "NightMode"

.field public static final READ_MODE:Ljava/lang/String; = "ReadMode"

.field public static final SYSTEM_MODE:Ljava/lang/String; = "SystemMode"

.field public static final ZEN_MODE:Ljava/lang/String; = "ZenMode"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    const-string v0, "GameMode"

    const-string v1, "ReadMode"

    const-string v2, "NightMode"

    const-string v3, "FingerPrintMode"

    const-string v4, "ZenMode"

    const-string v5, "CarMode"

    const-string v6, "ColorReadMode"

    const-string v7, "GoogleMatrixMode"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/core/oimc/OIMCMode;->MODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
