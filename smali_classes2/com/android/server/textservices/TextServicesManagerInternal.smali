.class public abstract Lcom/android/server/textservices/TextServicesManagerInternal;
.super Ljava/lang/Object;
.source "TextServicesManagerInternal.java"


# static fields
.field private static final NOP:Lcom/android/server/textservices/TextServicesManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerInternal$1;

    invoke-direct {v0}, Lcom/android/server/textservices/TextServicesManagerInternal$1;-><init>()V

    sput-object v0, Lcom/android/server/textservices/TextServicesManagerInternal;->NOP:Lcom/android/server/textservices/TextServicesManagerInternal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/textservices/TextServicesManagerInternal;
    .locals 2

    .line 59
    const-class v0, Lcom/android/server/textservices/TextServicesManagerInternal;

    .line 60
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerInternal;

    .line 61
    .local v0, "instance":Lcom/android/server/textservices/TextServicesManagerInternal;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/textservices/TextServicesManagerInternal;->NOP:Lcom/android/server/textservices/TextServicesManagerInternal;

    :goto_0
    return-object v1
.end method


# virtual methods
.method public abstract getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
.end method
