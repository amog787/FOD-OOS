.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;

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

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutUser;->lambda$detectLocaleChange$1(Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
