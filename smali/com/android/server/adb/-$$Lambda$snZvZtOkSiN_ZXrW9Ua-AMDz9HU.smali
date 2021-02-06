.class public final synthetic Lcom/android/server/adb/-$$Lambda$snZvZtOkSiN_ZXrW9Ua-AMDz9HU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/adb/-$$Lambda$snZvZtOkSiN_ZXrW9Ua-AMDz9HU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/adb/-$$Lambda$snZvZtOkSiN_ZXrW9Ua-AMDz9HU;

    invoke-direct {v0}, Lcom/android/server/adb/-$$Lambda$snZvZtOkSiN_ZXrW9Ua-AMDz9HU;-><init>()V

    sput-object v0, Lcom/android/server/adb/-$$Lambda$snZvZtOkSiN_ZXrW9Ua-AMDz9HU;->INSTANCE:Lcom/android/server/adb/-$$Lambda$snZvZtOkSiN_ZXrW9Ua-AMDz9HU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/adb/AdbService;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbService;->bootCompleted()V

    return-void
.end method
