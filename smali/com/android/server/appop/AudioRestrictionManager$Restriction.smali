.class final Lcom/android/server/appop/AudioRestrictionManager$Restriction;
.super Ljava/lang/Object;
.source "AudioRestrictionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AudioRestrictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Restriction"
.end annotation


# static fields
.field private static final NO_EXCEPTIONS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field exceptionPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    iput-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appop/AudioRestrictionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/appop/AudioRestrictionManager$1;

    .line 64
    invoke-direct {p0}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;-><init>()V

    return-void
.end method
