.class public final enum Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;
.super Ljava/lang/Enum;
.source "OPlusDisplayModeDirectorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OPlusDisplayModeDirectorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VRRPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

.field public static final enum ePolicyADFR:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

.field public static final enum ePolicyDefault:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

.field public static final enum ePolicyMEMC:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

.field public static final enum ePolicySpecialPanel:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

.field public static final enum ePolicySunReadable:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

.field public static final enum ePolicySystem:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 25
    new-instance v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    const-string v1, "ePolicyDefault"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyDefault:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    .line 26
    new-instance v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    const-string v1, "ePolicySpecialPanel"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySpecialPanel:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    .line 27
    new-instance v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    const-string v1, "ePolicyMEMC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyMEMC:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    .line 28
    new-instance v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    const-string v1, "ePolicyADFR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyADFR:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    .line 29
    new-instance v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    const-string v1, "ePolicySunReadable"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySunReadable:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    .line 30
    new-instance v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    const-string v1, "ePolicySystem"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySystem:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    .line 24
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    sget-object v8, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyDefault:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySpecialPanel:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyMEMC:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyADFR:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySunReadable:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->$VALUES:[Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->$VALUES:[Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    invoke-virtual {v0}, [Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value:I

    return v0
.end method
